<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Response as ApiResponse;
use App\Http\Traits\AdCreateTrait;
use App\Models\Report;
use App\Models\User;
use Carbon\Carbon;
use DB;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Modules\Ad\Entities\Ad;
use Modules\Ad\Entities\AdGallery;
use Modules\Category\Entities\Category;
use Modules\Category\Entities\SubCategory;

class AdController extends ApiResponse
{
    use AdCreateTrait;

    public function categoryWiseAds(Category $category)
    {


        $paginate = request()->paginate ?? false;

        $category_wise_ads = $category->ads()->with('category');

        if (Auth::guard('api')->check()) {
            $user_id = Auth::guard('api')->id();
            $block_ads_ids = DB::table('user_ad_block')->where('user_id', $user_id)->pluck('ad_id')->toArray();
            $category_wise_ads->whereNotIn('id', $block_ads_ids);

        }

        if ($paginate) {
            $ads = $category_wise_ads->simplePaginate($paginate)->withQueryString();
        } else {
            $ads = $category_wise_ads->get();
        }

        return parent::sendResponse(200, 'Category Wise Add', $ads);
    }

    public function adDetails(Ad $ad)
    {
        $ad_details = $ad->load('category', 'subcategory', 'customer', 'brand', 'adFeatures', 'galleries', 'adSize', 'adColor');
        $related_ads = Ad::whereCategoryId($ad->category_id)->where('id', '!=', $ad->id)->latest()->limit(4)->get();
        $data['ad_details'] = $ad_details;
        $data['related_ads'] = $related_ads;


        return parent::sendResponse(200, 'Ads Details', $data);
    }

    public function adsCollection(Request $request)
    {
        $paginate = $request->paginate ?? 10;
        $filter_by = $request->filter_by ?? false;
        $sort_by = $request->sort_by ?? false;
        $query = Ad::with('category')->active();

        if (Auth::guard('api')->check()) {
            $user_id = Auth::guard('api')->id();
            $block_ads_ids = DB::table('user_ad_block')->where('user_id', $user_id)->pluck('ad_id')->toArray();
            $query->whereNotIn('id', $block_ads_ids);


        }


        // Category filter
        if ($request->has('category') && $request->category != null) {
            $category = $request->category;
            $query->whereHas('category', function ($q) use ($category) {
                $q->where('slug', $category);
            });
        }

        // Subcategory filter
        if ($request->has('subcategory') && $request->subcategory != null) {
            $subcategory = $request->subcategory;
            $query->whereHas('subcategory', function ($q) use ($subcategory) {
                $q->where('slug', $subcategory);
            });
        }

        if ($request->has('childcategory') && $request->childcategory != null) {
            $childcategory = $request->childcategory;
            $query->whereHas('childcategory', function ($q) use ($childcategory) {
                $q->whereIn('slug', $childcategory);
            });
        }

        if ($request->has('keyword') && $request->keyword != null) {
            $query->where('title', 'LIKE', "%$request->keyword%");
        }

        // location
        if ($request->has('lat') && $request->has('long') && $request->lat != null && $request->long != null) {
            $ids = $this->location_filter($request->lat, $request->long);
            $query->whereIn('id', $ids);
        }


        if ($request->has('minPrice') && $request->minPrice != null) {
            $query->where('price', '>=', $request->minPrice);
        }
        if ($request->has('maxPrice') && $request->maxPrice != null) {
            $query->where('price', '<=', $request->maxPrice);
        }


        if (isset($request->sortinput)) {
            if ($request->sortinput == "default") {
                $query->orderBy('id', 'asc');
            } elseif ($request->sortinput == "new") {
                $query->orderBy('created_at', 'desc');
            } elseif ($request->sortinput === "highPrice") {

                $query->orderBy('price', 'desc');
            } elseif ($request->sortinput === "lowPrice") {

                $query->orderBy('price', 'asc');
            } elseif ($request->sortinput == "trending") {
                $query->where('trending', true);
            } elseif ($request->sortinput == "popular") {
                $query->where('popular', true);
            }
        }


        if (isset($request->conditions)) {
            $query->whereIn('condition', $request->conditions);
        }
        if (isset($request->country)) {
            $query->whereIn('country', $request->country);
        }


        if (isset($request->size)) {
            $size = clone $query;
            $data['sizes'] = $size->select('category_id', 'subcategory_id', 'size_id')
                ->groupBy('size_id')
                ->get();

            $query->whereIn('size_id', $request->size);
        }

        $ads = $query->paginate($paginate)->withQueryString();


        return parent::sendResponse(200, "All Ads", $ads);
    }

    public function storeAd(Request $request)
    {


        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
            'price' => 'required|numeric',
            'subcategory_id' => 'required',
            'child_category_id' => 'required',
            'size' => 'required',
            'color' => 'required',
            'condition' => 'required',
            'brand_id' => 'sometimes',
            'address' => 'required',
            'apartment' => 'sometimes',
            'city' => 'required',
            'state' => 'required',
            'postcode' => 'required',
            'country' => 'required',
            'description' => 'required',
            'images' => 'required',
            'images.*' => 'image|mimes:jpeg,png,jpg|max:2048',
            // 'min_price' => 'required_if:acceptOfferCheck,on',
            'smartPrice' => 'required_if:smartPriceCheck,on'
        ]);

        if ($validator->fails()) {
            return parent::sendError("Validation Error", $validator->errors()->first(), 200);
        }


        try {

            if (isset($request->shipping_region)) {
                if ($request->shipping_region != "[]" && $request->shiping_price != "[]") {
                    $region = explode(", ", trim($request->shipping_region, '[]'));
                    $shipping_price = explode(", ", trim($request->shiping_price, '[]'));
                    $shipping_region = array_combine($region, $shipping_price);
                } else {
                    $shipping_region = null;
                }
            } else {
                $shipping_region = null;
            }

            $measurements = [];
            $measure_scale = "";
            $tags = [];

            if ($request->measurment_name && $request->measurement_value) {
                if ($request->measurment_name != "[]" && $request->measurement_value != "[]") {
                    $measure_scale = $request->measurement_type;
                    $measure_name = explode(", ", trim($request->measurment_name, '[]'));
                    $measure_value = explode(", ", trim($request->measurement_value, '[]'));

                    // Check if both arrays are not empty
                    if (!empty($measure_name) && !empty($measure_value)) {
                        $measurements = array_combine($measure_name, $measure_value);
                    } else {
                        // Handle the case where one or both arrays are empty
                        $measurements = null;
                    }
                } else {
                    $measurements = null;
                }
            }

            $slug = Str::slug($request->title);
            $check_slug = DB::table('ads')->where('slug', $slug)->first();
            if ($check_slug) {
                $slug = $slug . '_' . uniqid();
            }

            $category_id = SubCategory::find($request->subcategory_id);
            $ad = new Ad();
            $ad->slug = $slug;
            $ad->status = setting('ads_admin_approval') ? 'pending' : 'active';
            $ad->category_id = $category_id->category_id;
            $ad->subcategory_id = $request->subcategory_id;
            $ad->child_category_id = $request->child_category_id;
            $ad->size_id = $request->size;
            $ad->title = $request->title;
            $ad->color = $request->color;
            $ad->condition = $request->condition;
            $ad->price = $request->price;
            $ad->is_smart_price = $request->smartPriceCheck ? true : false;
            if (isset($request->smartPriceCheck)) {
                $ad->smart_price = $request->smartPrice;
            }

            $ad->brand_id = $request->brand_id ?? null;
            $ad->address = $request->address;
            $ad->apartment = $request->apartment;
            $ad->city = $request->city;
            $ad->state = $request->state;
            $ad->postcode = $request->postcode;
            $ad->country = $request->country;
            $ad->description = $request->description;
            $ad->user_id = auth()->id();
            $ad->measure_scale = $measure_scale;

            if (isset($measurements)) {
                $ad->measurements = json_encode($measurements);
            }
            if (isset($shipping_region)) {
                $ad->shipping_region = json_encode($shipping_region);
            }
            // if ($request->tags) {
            //     $tags = $request->tags;
            // }
            // $ad->tags = $tags;

            $ad->save();

            $user = User::find(auth()->id());
            $user->coupons = $user->coupons - 1;
            $user->save();

            // setting('ads_admin_approval') ? 'pending' : 'active';

            if ($ad->status == 'active') {
                $validity = Carbon::now()->addDays(setting('ad_valid_day'));
                $ad->update(['validity' => $validity]);
            }

            $base64 = $request->base64 ?? true;
            if ($base64 && $request->images) {


                $file = explode(", ", trim($request->images, '[]'));


                foreach ($file as $key => $image) {
                    if ($key == 0 && $image) {

                        $url = uploadBase64FileToPublic($image, 'uploads/addss_image');

                        Log::alert($url);
                        $ad->update(['thumbnail' => $url]);
                    }

                    if ($key > 0 && $image) {

                        $url = uploadBase64FileToPublic($image, 'uploads/adds_multiple');
                        Log::alert($url);
                        $ad->galleries()->create(['image' => $url, 'ad_id' => $ad->id]);
                    }
                }
            } else {
                $images = $request->file('images');
                if ($images) {
                    foreach ($images as $key => $image) {
                        if ($key == 0 && $image) {

                            $url = uploadAdImage($image, 'addss_image', true);
                            $ad->update(['thumbnail' => $url]);
                        }

                        if ($key > 0 && $image->isValid()) {

                            $url = uploadAdImage($image, 'adds_multiple', true);
                            $ad->galleries()->create(['image' => $url, 'ad_id' => $ad->id]);
                        }
                    }
                }
            }

            // image uploading

            // if ($request->tags) {
            //     $tags = explode(", ", trim($request->tags, '[]'));
            //     foreach ($tags as $value) {
            //         $adTags = new AdsTags();
            //         $adTags->ad_id = $ad->id;
            //         $adTags->tag_name = $value;
            //         $adTags->status = true;
            //         $adTags->save();
            //     }
            // }

            return response()->json([
                'success' => true,
                'message' => 'Ad created successfully',
                'ad' => $ad
            ], Response::HTTP_OK);
        } catch (Exception $e) {
            Log::alert($e);


            return response()->json([
                'success' => false,
                'message' => 'Something is wrong',
                'error' => ['message' => $e, 'line' => $e->getLine()],
            ]);
        }
    }

    public function editAd(Ad $ad)
    {
        if ($ad->user_id != auth('api')->id()) {
            return response()->json([
                'success' => false,
                'message' => 'You are not allowed to do this action'
            ], Response::HTTP_FORBIDDEN);
        }
        // $ad->tag2 = json_decode($ad->tags,true);

        return $ad->load('category', 'subcategory', 'customer', 'brand', 'adFeatures', 'galleries');
    }

    public function updateAd(Request $request, Ad $ad)
    {


        $validator = Validator::make($request->all(), [
            'title' => 'required|string|unique:ads,title,' . $ad->id,
            'price' => 'required|numeric',
            'subcategory_id' => 'required',
            'child_category_id' => 'sometimes',
            'size' => 'required',
            'color' => 'required',
            'condition' => 'required',
            'brand_id' => 'sometimes',
            'address' => 'required',
            'apartment' => 'sometimes',
            'city' => 'required',
            'state' => 'required',
            'postcode' => 'required',
            'country' => 'required',
            'description' => 'required',
            'images' => 'nullable',
            'images.*' => 'image|mimes:jpeg,png,jpg|max:2048',
            // 'min_price' => 'required_if:acceptOfferCheck,on',
            'smartPrice' => 'required_if:smartPriceCheck,on'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Something is wrong',
                'error' => $validator->errors()->first()
            ]);
        }

        if ($validator->fails()) {
            return parent::sendError("Validation Error", $validator->errors()->first(), 200);
        }


        try {
            $ad->update(['description' => $request->description]);
            if ($request->has('shipping_region') && $request->has('shiping_price')) {
                if ($request->shipping_region != "[]" && $request->shiping_price != "[]") {

                    $region = explode(", ", trim($request->shipping_region, '[]'));
                    $shipping_price = explode(", ", trim($request->shiping_price, '[]'));
                    $shipping_region = array_combine($region, $shipping_price);
                } else {
                    $shipping_region = null;
                }
            } else {
                $shipping_region = null;
            }

            $measurements = [];
            $measure_scale = "";
            $tags = [];

            if ($request->has('measurment_name') && $request->has('measurement_value')) {
                if ($request->measurment_name != "[]" && $request->measurement_value != "[]") {
                    $measure_scale = $request->measurement_type;
                    $measure_name = explode(", ", trim($request->measurment_name, '[]'));
                    $measure_value = explode(", ", trim($request->measurement_value, '[]'));

                    // Check if both arrays are not empty
                    if (!empty($measure_name) && !empty($measure_value)) {
                        $measurements = array_combine($measure_name, $measure_value);
                    } else {
                        // Handle the case where one or both arrays are empty
                        $measurements = null;
                    }
                } else {
                    $measurements = null;
                }
            }

            //thumbnail upload


            $thumbnail = $request->thumbnail;


            if ($request->has('thumbnail') && !empty($request->thumbnail)) {
                $thumburl = uploadBase64FileToPublic($thumbnail, 'uploads/adds_multiple');
            } else {
                $thumburl = $ad->thumbnail;
            }


            // image uploading

            if ($request->has('delete_image') && $request->delete_image != '[]') {
                $delete_image = explode(", ", trim($request->delete_image, '[]'));
                AdGallery::whereIn('id', $delete_image)->delete();
            }


            $base64 = $request->base64 ?? true;
            if ($request->images && $request->images != "[]") {


                $file = explode(", ", trim($request->images, '[]'));


                foreach ($file as $key => $image) {

                    $url = uploadBase64FileToPublic($image, 'uploads/adds_multiple');
                    $ad->galleries()->create(['image' => $url, 'ad_id' => $ad->id]);
                }
            } else {
                $images = $request->file('images');
                if ($images) {
                    foreach ($images as $key => $image) {
                        if ($key == 0 && $image) {

                            $url = uploadAdImage($image, 'addss_image', true);
                            $ad->update(['thumbnail' => $url]);
                        }

                        if ($key > 0 && $image->isValid()) {

                            $url = uploadAdImage($image, 'adds_multiple', true);
                            $ad->galleries()->create(['image' => $url, 'ad_id' => $ad->id]);
                        }
                    }
                }
            }
            $subcategory = SubCategory::where('id', $request->subcategory_id)->first();

            $category = Category::where('id', $subcategory->category_id)->first();


            $ad->update([
                'title' => $request->title,
                'slug' => Str::slug($request->title),
                'category_id' => $category->id,
                'subcategory_id' => $request->subcategory_id,
                'child_category_id' => $request->child_category_id,
                'brand_id' => $request->brand_id,
                'price' => $request->price,
                'smart_price' => $request->smartPrice,
                'is_smart_price' => $request->smartPriceCheck,
                'color' => $request->color,
                'condition' => $request->condition,
                'featured' => $request->featured,
                'size_id' => $request->size,
                'postcode' => $request->postcode,
                'address' => $request->address,
                'country' => $request->country,
                'apartment' => $request->apartment,
                'city' => $request->city,
                'state' => $request->state,
                'thumbnail' => $thumburl,
                'measure_scale' => $measure_scale,
                'measurements' => isset($measurements) ? json_encode($measurements) : null,
                'shipping_region' => isset($shipping_region) ? json_encode($shipping_region) : null,
            ]);


            return response()->json([
                'success' => true,
                'message' => 'Ad updated successfully',
                'ad' => $ad
            ], Response::HTTP_OK);
        } catch (Exception $e) {

            return parent::sendError("Validation Error", $validator->errors()->first(), 200);
        }
    }

    public function deleteAdGallery($ad_gallery)
    {
        $ad_gallery = AdGallery::find($ad_gallery);

        if ($ad_gallery) {
            $ad_gallery->delete();
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Image not found'
            ], Response::HTTP_NOT_FOUND);
        }

        return response()->json([
            'success' => true,
            'message' => 'Ad gallery image deleted successfully',
        ], Response::HTTP_OK);
    }

    public function deleteAd(Ad $ad)
    {
        $ad->galleries()->delete();
        $ad->delete();

        return response()->json([
            'success' => true,
            'message' => 'Ad deleted successfully',
        ], Response::HTTP_OK);
    }

    public function reportAds(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'ad_id' => 'required',
            'reason' => 'required',
            'email' => 'required|email',
            'message' => 'required|max:250',
        ]);
        if ($validate->fails()) {
            return parent::sendError("Validation Error", $validate->errors()->first(), 200, []);
        }
        $check_exist = Report::where('report_from_id', auth('api')->id())->where('ad_id', $request->ad_id)->first();
        if (!empty($check_exist)) {
            return parent::sendError("Invalid", 'Sorry you can not report again.', 200, []);
        }
        DB::beginTransaction();
        try {
            $ads = Ad::find($request->ad_id);
            $report = new Report();
            $report->report_from_id = auth('api')->id();
            $report->report_to_id = $ads->user_id;
            $report->ad_id = $ads->id;
            $report->email = $request->email;
            $report->message = $request->message;
            $report->reason = $request->reason;
            $report->save();
        } catch (\Exception $e) {
            DB::rollback();
            return parent::sendError("Exception", $e->getMessage(), 200, []);
            return parent::sendError("Exception", 'Something went wrong please try again.', 200, []);
        }
        DB::commit();
        return parent::sendResponse(200, 'Thanks your ad report successfully sent', [], 1, '');
    }

}
