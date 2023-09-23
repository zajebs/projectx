<?php

namespace App\Http\Controllers\Frontend;



use Exception;
use Carbon\Carbon;
use App\Models\Seo;
use App\Models\User;
use App\Mail\AllMail;
use App\Models\Color;
use App\Models\AdsSize;
use App\Models\Setting;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Str;
use Modules\Ad\Entities\Ad;
use Illuminate\Http\Request;
use App\Models\ShippingAddress;
use Modules\Brand\Entities\Brand;
use App\Http\Traits\AdCreateTrait;
use Illuminate\Support\Facades\DB;
use Modules\Ad\Entities\AdGallery;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Models\Admin\ShipingLocations;
use Illuminate\Support\Facades\Session;
use Modules\Category\Entities\Category;
use Childcategory as GlobalChildcategory;
use Google\Service\Datastream\Validation;
use Illuminate\Support\Facades\Validator;
use Modules\Category\Entities\SubCategory;
use Modules\CustomField\Entities\CustomField;
use Modules\ChildCategory\Entities\ChildCategory;
use Modules\CustomField\Entities\ProductCustomField;

class AdPostController extends Controller
{
    use AdCreateTrait;

    /**
     * Ad Create step 1.
     * @return Application|Factory|View|RedirectResponse
     */
    public function postStep1(Request $request)
    {
        $isverify = auth('user')->user();
        if ($isverify->email_verified_at == null) {
            return redirect()->route('verification.notice');
        }

        $this->stepCheck();
        if (session('step1')) {
            $categories = Category::with('subcategories')->where('status', true)->get();


            $brands = Brand::latest('id')->get();
            $ad = '';
            if ($request->src) {
                $ad = Ad::find($request->src);
                if (isset($ad->subcategory_id)) {
                    $ad->child_category = ChildCategory::where('sub_category_id', $ad->subcategory_id)->get();
                }
                $ad->sizes = AdsSize::where('category_id', $ad->category_id)
                    ->where('sub_category_id', $ad->subcategory_id)
                    ->where('status', true)->get();
            }


            $colors = Color::where('status', true)->get();
            $locations = ShipingLocations::where('status', true)->get();
            $shippings = ShippingAddress::where('user_id', Auth::user()->id)->orderBy('id', 'desc')->get();
            foreach ($shippings as $key => $value) {
                $value->location = ShipingLocations::where('id', $value->country)->first();
            }

            return view('frontend.postad.step1', compact('categories', 'brands', 'ad', 'colors', 'locations', 'shippings'));
        } else {
            return redirect()->route('frontend.post');
        }
    }

    /**
     * Ad Create step 2.
     *
     * @return Application|Factory|RedirectResponse|View
     */
    public function postStep2()
    {
        if (session('step2')) {
            $ad = session('ad');


            $category = Category::with('customFields.values')->FindOrFail($ad->category_id);
            $subcategory_id = SubCategory::find($ad->subcategory_id);
            $child_category = ChildCategory::find($ad->child_category_id);
            $locations = ShipingLocations::where('status', true)->get();
            return view('frontend.postad.step2', compact('ad', 'category', 'subcategory_id', 'child_category', 'locations'));
        } else {
            return redirect()->route('frontend.post');
        }
    }

    /**
     * Ad Create step 3.
     *
     * @return Application|Factory|RedirectResponse|View
     */
    public function postStep3()
    {
        if (session('step3')) {
            return view('frontend.postad.step3');
        } else {
            return redirect()->route('frontend.post');
        }
    }

    /**
     * Store Ad Create step 1.ul Islam <devboyarif@gmail.com>
     *  @param  Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function storePostStep1(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'subcategory_id' => 'required',
            'child_category_id' => 'required',
            'title' => 'required|max:255',
            'size' => 'required',
            'color' => 'required',
            'condition' => 'required',
            'description' => 'required',
            'price' => 'required|numeric',
            'brand_id' => 'sometimes',
            'smartPrice' => 'required_if:smartPriceCheck,on',
            'address' => 'required',
            'apartment' => 'sometimes',
            'city' => 'required',
            'state' => 'required',
            'postcode' => 'required',
            'country' => 'required',
            'images' => 'required',
            'images.*' => 'image|mimes:jpeg,png,jpg|max:2048',
            // 'min_price' => 'required_if:acceptOfferCheck,on',
        ],[
            'subcategory_id.required' => 'The category field is required',
            'child_category_id.required' => 'The subcategory field is required',
            'title.required' => 'Item name is required',
        ]);

        if ($validator->fails()) {
            return response()->json(['verror' => $validator->errors()->first()]);
        }

        // return response()->json($measurements);
        if (isset($request->shipping_region)) {
            $region = $request->shipping_region;
            $shipping_price = $request->shiping_price;
            $shipping_region = array_combine($region, $shipping_price);
        }

        DB::beginTransaction();
        try {
            $measure_scale = '';
            $measurements = [];
            $tags = [];

            if ($request->measurment_name && $request->measurement_value) {

                $measure_scale = $request->measurement_type;
                $measure_name = $request->measurment_name;
                $measure_value = $request->measurement_value;
                $measurements = array_combine($measure_name, $measure_value);
            }

            $slug = Str::slug($request->title);
            $check_slug = DB::table('ads')->where('slug',$slug)->first();
            if($check_slug){
                $slug = $slug.'_'.uniqid();
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

            if ($request->tags) {
                $tags = $request->tags;
            }
            $ad->tags = $tags;

            $ad->save();

            $user = User::find(auth()->id());
            $user->coupons = $user->coupons - 1;
            $user->save();

            // setting('ads_admin_approval') ? 'pending' : 'active';

            if ($ad->status == 'active') {
                $validity = Carbon::now()->addDays(setting('ad_valid_day'));
                $ad->update(['validity' => $validity]);
            }
            // image uploading
            $images = $request->images;
            if ($images) {
                foreach ($images as $key => $image) {
                    Log::alert($image);
                    if ($key == 0 && $image && $image->isValid()) {

                        $url = uploadAdImage($image, 'addss_image', true);
                        $ad->update(['thumbnail' => $url]);
                    }

                    if ($key > 0 && $image->isValid()) {

                        $url = uploadAdImage($image, 'adds_multiple', true);
                        $ad->galleries()->create(['image' => $url, 'ad_id' => $ad->id]);
                    }
                }
            }

            // if ($request->tags) {
            //     $tags = json_decode($request->tags, true);
            //     foreach ($tags as  $value) {
            //         $adtags = new AdsTags();
            //         $adtags->ad_id = $ad->id;
            //         $adtags->tag_name = $value['value'];
            //         $adtags->status = true;
            //         $adtags->save();
            //     }
            // }



        } catch (Exception $e) {
            DB::rollBack();
            return response()->json(['error', $e->getMessage()]);
        }
        DB::commit();
        return response()->json(['message' => "Ads has been posted", "status" => 'Success']);

    }

    /**
     * Store Ad Create step 2.
     *  @param  Request $request
     * @return void
     */
    public function storePostStep2(Request $request)
    {

        $validatedData = $request->validate([
            'phone' => 'sometimes',
            'show_phone' => 'sometimes',
            'phone_2' => 'sometimes',
            'whatsapp' => 'nullable',
            'address' => 'required',
            'apartment' => 'sometimes',
            'city' => 'required',
            'state' => 'required',
            'postcode' => 'required',
            'country' => 'required',

        ]);





        $location['address'] = $request->address;
        $location['apartment'] = $request->apartment;
        $location['city'] = $request->city;
        $location['state'] = $request->state;
        $location['postcode'] = $request->postcode;
        $location['country'] = $request->country;
        $location['phone'] = $request->phone;
        $location['phone_2'] = $request->phone_2;
        $location['lng'] = 0;
        $location['lat'] = 0;


        Session::put('location', $location);




        $location = session()->get('location');


        $category = Category::with('customFields.values')->FindOrFail($request->category);
        $child_category = ChildCategory::find($request->child_category);

        foreach ($category->customFields as $field) {

            if ($field->slug !== $request->has($field->slug) && $field->required) {
                if ($field->type != 'checkbox' && $field->type != 'checkbox_multiple') {
                    $request->validate([
                        $field->slug => 'required',
                    ]);
                }
            }
            if ($field->type == 'textarea') {
                $request->validate([
                    $field->slug => 'max:255',
                ]);
            }
            if ($field->type == 'url') {
                $request->validate([
                    $field->slug => 'url',
                ]);
            }
            if ($field->type == 'number') {
                $request->validate([
                    $field->slug => 'numeric',
                ]);
            }
            if ($field->type == 'date') {
                $request->validate([
                    $field->slug => 'date',
                ]);
            }
        }

        $newItem = [];
        foreach ($request->except('cf') as $key =>  $value) {

            $fileType = gettype($value);

            if ($fileType == 'object') {

                $image = uploadAdImage($value, '/custom-field/');

                $item = [$key => $image];
            } else {

                $item = [$key => $value];
            }

            array_push($newItem, $item);
        }

        session()->put('custom-field', $newItem);
        session()->put('custom-field-checkbox', $request->get('cf'));

        try {
            $ad = session('ad');
            $ad->fill($validatedData);
            $request->session()->put('ad', $ad);

            $this->step1Success2();
            return redirect()->route('frontend.post.step3');
        } catch (\Throwable $th) {

            $this->forgetStepSession();
            return redirect()->route('frontend.post')->with('error', 'Something went wrong while saving your ad.Please try again.');
        }
    }

    /**
     * Store Ad Create step 3.
     *  @param  Request $request
     * @return Application|Factory|RedirectResponse|View
     */
    public function storePostStep3(Request $request)
    {

        $validatedData = $request->validate([
            'description' => 'required',
            'images.*' => 'image|mimes:jpeg,png,jpg|max:2048'
        ]);

        if (!$request->hasFile('images')) {
            return redirect()->back()->with('error', 'Please upload at least 1 images.');
        }

        $image_count = count($request->file('images'));
        if (($image_count < 1)) {
            return redirect()->back()->with('error', 'Please upload at least 1 images.');
        }


        $ad['description'] = $validatedData['description'];
        $ad['user_id'] = auth('user')->id();
        $ad['whatsapp'] = $ad['whatsapp'] ?? '';
        $ad['phone'] = session('location')['phone'];
        $ad['phone_2'] = session('location')['phone_2'];
        $ad['status'] = setting('ads_admin_approval') ? 'pending' : 'active';
        $request->session()->put('ad', $ad);
        $ad->save();

        // image uploading
        $images = $request->file('images');
        foreach ($images as $key => $image) {
            if ($key == 0 && $image && $image->isValid()) {

                $url = uploadAdImage($image, 'addss_image', false);
                $ad->update(['thumbnail' => $url]);
            }

            if ($image && $image->isValid()) {

                $url = uploadAdImage($image, 'adds_multiple', false);
                $ad->galleries()->create(['image' => $url, 'ad_id' => $ad->id]);
            }
        }

        // feature inserting
        $features = $request->features;
        foreach ($features as $feature) {
            $ad->adFeatures()->create(['name' => $feature]);
        }

        $this->forgetStepSession();
        $this->adNotification($ad);


        // ===================== For Custom Field   ================
        $customField  =  session()->get('custom-field'); // without checkbox
        $checkboxFields = session()->get('custom-field-checkbox'); // with checkbox

        if ($checkboxFields) {
            foreach ($checkboxFields as $key => $values) {
                $CustomField = CustomField::findOrFail($key)->load('customFieldGroup');

                if (gettype($values) == 'array') {
                    $imploded_value = implode(", ", $values);

                    $ad->productCustomFields()->create([
                        'custom_field_id' => $key,
                        'value' => $imploded_value,
                        'custom_field_group_id' => $CustomField->custom_field_group_id,
                    ]);
                } else {
                    $ad->productCustomFields()->create([
                        'custom_field_id' => $key,
                        'value' => $values ?? '0',
                        'custom_field_group_id' => $CustomField->custom_field_group_id,
                    ]);
                }
            }
        }

        $category = Category::with('customFields.values')->FindOrFail($ad->category_id);
        foreach ($category->customFields as $field) {

            $customField  =  session()->get('custom-field');
            $keys = array_keys($customField);

            for ($i = 0; $i < count($customField); $i++) {

                foreach ($customField[$keys[$i]] as $key => $value) {

                    if ($field->slug == $key) {
                        $CustomField = CustomField::findOrFail($field->id)->load('customFieldGroup');

                        $ad->productCustomFields()->create([
                            'custom_field_id' => $field->id,
                            'value' => $value,
                            'custom_field_group_id' => $CustomField->custom_field_group_id,
                        ]);
                    }
                }
            }
        }
        session()->forget('custom-field');

        // <!--  location  -->
        $location = session()->get('location');

        $tags ='[]';
        if ($request->tags) {
            $tags = $request->tags;
        }


        $ad->update([

            'address' => array_key_exists("address", $location) ? $location['address'] : '',
            'apartment' => array_key_exists("apartment", $location) ? $location['apartment'] : '',
            'city' => array_key_exists("city", $location) ? $location['city'] : '',
            'state' => array_key_exists("state", $location) ? $location['state'] : '',
            'postcode' => array_key_exists("postcode", $location) ? $location['postcode'] : '',
            'country' => array_key_exists("country", $location) ? $location['country'] : '',
            'long' => array_key_exists("lng", $location) ? $location['lng'] : '',
            'lat' => array_key_exists("lat", $location) ? $location['lat'] : '',
            'lat' => array_key_exists("lat", $location) ? $location['lat'] : '',
            'phone' => $location['phone'] ?? '',
            'phone_2' => $location['phone_2'] ?? '',
            'tags' => $tags,
        ]);



        // if ($request->tags) {
        //     $tags = json_decode($request->tags, true);
        //     foreach ($tags as $key => $value) {

        //         $adtags = new AdsTags();
        //         $adtags->ad_id = $ad->id;
        //         $adtags->tag_name = $value['value'];
        //         $adtags->status = true;
        //         $adtags->save();
        //     }
        // }


        // Ess
        $data['setting'] = Setting::first();
        $data['about'] = Seo::where('page_slug', 'about')->first();
        $data['subject'] = "Ad Posted Notification";
        $data['tempalte'] = "ad-post-notifications";
        $data['to'] = Auth::user()->email;

        $data['adTitle'] = $ad->title;
        $data['slug'] = $ad->slug;


        Mail::to($data['to'])->send(new AllMail($data));


        session()->forget('location');

        return view('frontend.postad.postsuccess', [
            'ad_slug' => $ad->slug,
            'mode' => 'create'
        ]);
    }

    /**
     * Ad Edit step 1.
     * @return void
     */
    public function editPostStep1(Ad $ad)
    {
        $ad->load('adFeatures', 'galleries');

        // $measure = json_decode($ad->measurements);
        // foreach ($measure as $key => $value) {
        //     if ($key == 'Length') {
        //         dd($value);
        //     }
        // }



        if (auth('user')->id() == $ad->user_id) {
            $this->stepCheck();
            session(['edit_mode' => true]);

            if (session('step1') && session('edit_mode')) {
                // $ad = collectionToResource($this->setAdEditStep1Data($ad));
                $categories = Category::with('subcategories')->where('status', true)->get();

                $child_categories = ChildCategory::where('sub_category_id', $ad->subcategory_id)->where('status', true)->get();

                $sizes = AdsSize::where('category_id', $ad->category_id)
                    ->where('sub_category_id', $ad->subcategory_id)
                    ->where('status', true)->get();
                // $sizes = AdsSize::latest('id')->get();
                $brands = Brand::latest('id')->get();
                $colors = Color::where('status', true)->get();
                $locations = ShipingLocations::where('status', true)->get();

                // dd($ad);
                $region = shipping_region() ?? [];
                $ad_region = [];
                $ad_region_name = [];
                if ($ad->shipping_region) {
                    $ad_region = $ad->shipping_region;
                    foreach ($ad->shipping_region as $key => $value) {
                        $ad_region_name[] = $key;
                    }
                }
                $all_region = $ad_region + $region;

                $shippings = ShippingAddress::where('user_id', Auth::user()->id)->orderBy('id', 'desc')->get();
                foreach ($shippings as $key => $value) {
                    $value->location = ShipingLocations::where('id', $value->country)->first();
                }

                return view('frontend.postad_edit.step1', compact('ad', 'categories', 'brands', 'child_categories', 'sizes', 'colors', 'locations', 'all_region', 'ad_region_name', 'shippings'));
            } else {
                return redirect()->route('frontend.dashboard');
            }
        }

        abort(404);
    }

    /**
     * Ad Edit step 2.
     *
     * @return void
     */
    public function editPostStep2(Ad $ad)
    {
        $fields = $ad->productCustomFields;

        $lat = $ad->lat;
        $long = $ad->long;

        $locations = ShipingLocations::where('status', true)->get();


        if (auth('user')->id() == $ad->user_id) {

            $ad = collectionToResource($this->setAdEditStep2Data($ad));

            if (session('step2') && session('edit_mode')) {

                return view('frontend.postad_edit.step2', compact('lat', 'long', 'ad', 'fields', 'locations'));
            } else {
                return redirect()->route('frontend.dashboard');
            }
        }

        abort(404);
    }

    /**
     * Edit Ad step 3.
     *
     * @return void
     */
    public function editPostStep3(Ad $ad)
    {
        $ad->load('adFeatures', 'galleries', 'adTags');

        if (auth('user')->id() == $ad->user_id) {
            $ad = collectionToResource($this->setAdEditStep3Data($ad));

            if (session('step3') && session('edit_mode')) {
                return view('frontend.postad_edit.step3', compact('ad'));
            } else {
                return redirect()->route('frontend.dashboard');
            }
        }

        abort(404);
    }

    /**
     * Update Ad step 1.ul Islam <devboyarif@gmail.com>
     *  @param  Request $request
     * @return void
     */
    public function UpdatePostStep1(Request $request, Ad $ad)
    {

        $validator = Validator::make($request->all(), [
            'subcategory_id' => 'required',
            'child_category_id' => 'required',
            'title' => 'required|unique:ads,title,' . $ad->id,
            'size' => 'required',
            'color' => 'required',
            'condition' => 'required',
            'description' => 'required',
            'price' => 'required|numeric',
            'featured' => 'sometimes',
            'brand_id' => 'sometimes',
            'address' => 'required',
            'apartment' => 'sometimes',
            'city' => 'required',
            'state' => 'required',
            'postcode' => 'required',
            'country' => 'required',
            'shipping_region' => 'required',
            'images.*' => 'image|mimes:jpeg,png,jpg|max:2048',
            // 'smartPrice' => 'required_if:smartPriceCheck,on',
        ],[
            'subcategory_id.required' => 'The category field is required',
            'child_category_id.required' => 'The subcategory field is required',
            'title.required' => 'Item name is required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()->first()]);
        }
        try {
            $ad->update(['description' => $request->description]);

            $measure_scale = '';
            $measurements = [];

            if ($request->measurment_name && $request->measurement_value) {

                $measure_scale = $request->measurement_type;
                $measure_name = $request->measurment_name;
                $measure_value = $request->measurement_value;
                $measurements = array_combine($measure_name, $measure_value);
            }
            if ($request->shipping_region) {
                $region = $request->shipping_region;
                $shipping_price = $request->shiping_price;
                $shipping_region = array_combine($region, $shipping_price);
            }

            //thumbnail upload
            $thumbnail = $request->file('thumbnail');
            if ($thumbnail) {
                $thumburl = uploadAdImage($thumbnail, 'adds_multiple', true);
                if (file_exists($ad->thumbnail)) {
                    unlink($ad->thumbnail);
                }
            } else {
                $thumburl = $ad->thumbnail;
            }


            // image uploading
            $images = $request->file('images');
            $old = $request->old;
            $gallery = AdGallery::where('ad_id', $ad->id)->get();
            if ($old) {
                foreach ($gallery as $value) {
                    if (!in_array($value->id, $old)) {
                        $value->delete();
                    }
                };
            } else {
                foreach ($gallery as $value) {
                    $value->delete();
                };
            }
            if ($images) {
                foreach ($images as $image) {
                    if ($image && $image->isValid()) {

                        $url = uploadAdImage($image, 'adds_multiple', true);
                        $ad->galleries()->create(['image' => $url]);
                    }
                }
            }
            $subcategory = SubCategory::where('id', $request->subcategory_id)->first();

            $category = Category::where('id', $subcategory->category_id)->first();

            $tags = '';
            if ($request->tags) {
                // $tags = json_decode($request->tags);
                // dd($request->tags);
            }

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
                'measurements' => json_encode($measurements),
                'shipping_region' => $shipping_region ? json_encode($shipping_region) : '',
                'tags' => $tags,
            ]);

            // if ($request->tags) {
            //     $ad->adTags()->delete();
            //     $tags = json_decode($request->tags, true);
            //     foreach ($tags as  $value) {

            //         $adtags = new AdsTags();
            //         $adtags->ad_id = $ad->id;
            //         $adtags->tag_name = $value['value'];
            //         $adtags->status = true;
            //         $adtags->save();
            //     }
            // } else {
            //     $ad->adTags()->delete();
            // }


            return response()->json(['message' => 'Ad successfully updated', "status" => 'Success']);
        } catch (\Throwable $e) {
            // dd($e);
            return response()->json(['eerror', $e->getMessage()]);
        }
    }

    /**
     * Update Ad step 2.
     *  @param  Request $request
     * @return void
     */
    public function updatePostStep2(Request $request, Ad $ad)
    {
        $request->validate([
            'phone' => 'sometimes',
            'phone_2' => 'sometimes',
            'address' => 'required',
            'apartment' => 'sometimes',
            'city' => 'required',
            'state' => 'required',
            'postcode' => 'required',
            'country' => 'required',

        ]);

        $this->updateCustomField($request, $ad);

        $ad->update([
            'phone' => $request->phone,
            'show_phone' => $request->show_phone,
            'phone_2' => $request->phone_2,
            'whatsapp' => $request->whatsapp,
            'postcode' => $request->postcode,
            'address' => $request->address,
            'country' => $request->country,
            'apartment' => $request->apartment,
            'city' => $request->city,
            'state' => $request->state,

        ]);

        // <!--  location  -->
        $location = session()->get('location');
        if ($location) {

            $ad->update([

                'postcode' => array_key_exists("postcode", $location) ? $location['postcode'] : '',
                'address' => array_key_exists("address", $location) ? $location['address'] : '',
                'country' => array_key_exists("country", $location) ? $location['country'] : '',
                'apartment' => array_key_exists("apartment", $location) ? $location['apartment'] : '',
                'city' => array_key_exists("city", $location) ? $location['city'] : '',
                'state' => array_key_exists("state", $location) ? $location['state'] : '',
                'long' => array_key_exists("lng", $location) ? $location['lng'] : '',
                'lat' => array_key_exists("lat", $location) ? $location['lat'] : '',
            ]);
            session()->forget('location');
        }


        if ($request->cancel_edit) {
            $this->forgetStepSession();
            return redirect()->route('frontend.dashboard');
        } else {
            $this->step1Success2();
            return redirect()->route('frontend.post.edit.step3', $ad->slug);
        }
    }

    /**
     * Update Ad step 3.
     *  @param  Request $request
     * @return void
     */
    public function updatePostStep3(Request $request, Ad $ad)
    {
        $request->validate([
            'description' => 'required',
            'thumbnail' => 'sometimes',
        ]);


        $ad->update(['description' => $request->description]);
        if ($request->has('thumbnail')) {
            # code...
            $ad->update(['thumbnail' => uploadAdImage($request->file('thumbnail')[0], 'adds_multiple', true)]);
        }

        // feature inserting
        $ad->adFeatures()->delete();
        foreach ($request->features as $feature) {
            if ($feature) {
                $ad->adFeatures()->create(['name' => $feature]);
            }
        }

        // image uploading
        $images = $request->file('images');
        if ($images) {
            $ad->galleries()->delete();
            foreach ($images as $image) {
                if ($image && $image->isValid()) {

                    $url = uploadAdImage($image, 'adds_multiple', true);
                    $ad->galleries()->create(['image' => $url]);
                }
            }
        }

        $this->forgetStepSession();
        $this->adNotification($ad, 'update');


        // if ($request->tags) {
        //     $ad->adTags()->delete();
        //     $tags = json_decode($request->tags, true);
        //     foreach ($tags as  $value) {

        //         $adtags = new AdsTags();
        //         $adtags->ad_id = $ad->id;
        //         $adtags->tag_name = $value['value'];
        //         $adtags->status = true;
        //         $adtags->save();
        //     }
        // } else {

        //     $ad->adTags()->delete();
        // }


        return view('frontend.postad.postsuccess', [
            'ad_slug' => $ad->slug,
            'mode' => 'update',
        ]);
        // return view('frontend.postad.custom-field-edit', compact('ad'));
    }

    /**
     * Cancel Ad Edit.
     * @return void
     */
    public function cancelAdPostEdit()
    {
        $this->forgetStepSession();
        return redirect()->route('frontend.dashboard');
    }

    public function adGalleryDelete($ad_gallery)
    {
        $ad_gallery = AdGallery::find($ad_gallery);
        if ($ad_gallery) {
            $ad_gallery->delete();
        }
    }

    protected function updateCustomField($request, Ad $ad)
    {
        $category = Category::with('customFields.values')->FindOrFail($ad->category_id);

        foreach ($category->customFields as $field) {
            if ($field->slug !== $request->has($field->slug) && $field->required) {
                if ($field->type != 'checkbox' && $field->type != 'checkbox_multiple') {
                    $request->validate([
                        $field->slug => 'required',
                    ]);
                }
            }
            if ($field->type == 'textarea') {
                $request->validate([
                    $field->slug => 'max:255',
                ]);
            }
            if ($field->type == 'url') {
                $request->validate([
                    $field->slug => 'url',
                ]);
            }
            if ($field->type == 'number') {
                $request->validate([
                    $field->slug => 'numeric',
                ]);
            }
            if ($field->type == 'date') {
                $request->validate([
                    $field->slug => 'date',
                ]);
            }
        }

        // First Delete If Custom Field Value exist for this Ad
        $field_values = ProductCustomField::where('ad_id', $ad->id)->get();
        foreach ($field_values as $item) {

            if (file_exists($item->value)) {
                unlink($item->value);
            }
            $item->delete();
        }

        $checkboxFields = [];
        if (request()->filled('cf')) {
            $checkboxFields = request()->get('cf');
        }

        // Checkbox Fields
        if ($checkboxFields) {
            foreach ($checkboxFields as $key => $values) {
                $CustomField = CustomField::findOrFail($key)->load('customFieldGroup');

                if (gettype($values) == 'array') {
                    $imploded_value = implode(", ", $values);

                    $ad->productCustomFields()->create([
                        'custom_field_id' => $key,
                        'value' => $imploded_value,
                        'custom_field_group_id' => $CustomField->custom_field_group_id,
                    ]);
                } else {
                    $ad->productCustomFields()->create([
                        'custom_field_id' => $key,
                        'value' => $values ?? '0',
                        'custom_field_group_id' => $CustomField->custom_field_group_id,
                    ]);
                }
            }
        }

        // then insert
        foreach ($category->customFields as $field) {

            if ($field->slug == $request->has($field->slug)) {
                $CustomField = CustomField::findOrFail($field->id)->load('customFieldGroup');

                // check data type for confirm it is image
                $fileType = gettype(request($field->slug));

                if ($fileType == 'object') {
                    $image = uploadAdImage(request($field->slug), '/custom-field/');
                }

                $ad->productCustomFields()->create([
                    'custom_field_id' => $field->id,
                    'value' => $fileType == 'object' ? $image : request($field->slug),
                    'custom_field_group_id' => $CustomField->custom_field_group_id,
                ]);
            }
        }

        return true;
    }

    public function AddShippingFromAddress(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'state' => 'required',
            'country' => 'required',
            'postcode' => 'required',
            'address' => 'required',
            'city' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 'valid_error', 'valid' => $validator->errors()->all()]);
        }
        try {

            $shipping = new ShippingAddress();
            $shipping->user_id = Auth::user()->id;
            $shipping->state = $request->state;
            $shipping->apartment = $request->apartment;
            $shipping->country = $request->country;
            $shipping->postcode = $request->postcode;
            $shipping->city = $request->city;
            $shipping->address = $request->address;
            $shipping->save();
            // dd($request->all());

            return response()->json(['status' => 'success', 'data' => $shipping]);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error']);
        }
    }
    public function getShipFromAddress(Request $request)
    {
        try {

            $shipping = ShippingAddress::where('id', $request->id)->first();
            $country = ShipingLocations::where('id', $shipping->country)->first();
            return response()->json(['status' => 'success', 'data' => $shipping, 'country' => $country]);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error']);
        }
    }

    public function getChildcategory(Request $request)
    {

        $childCategory = ChildCategory::where('sub_category_id', $request->id)->get();
        // return response()->json($childCategory);
        $html = '';
        foreach ($childCategory as $key => $item) {
            $html .= '<option value="' . $item->id . '"> ' . $item->name . ' </option>';
        }
        return response()->json($html);
        // echo json_encode(ChildCategory::where('sub_category_id', $request->id)->get());
    }
}
