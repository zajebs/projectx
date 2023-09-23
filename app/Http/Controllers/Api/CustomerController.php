<?php

namespace App\Http\Controllers\Api;

use Exception;
use App\Models\User;
use App\Models\Setting;
use App\Models\Transaction;
use Illuminate\Support\Facades\DB;
use Modules\Ad\Entities\Ad;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Rules\MatchOldPassword;
use App\Http\Traits\MobileTrait;
use Illuminate\Http\JsonResponse;
use Modules\Review\Entities\Review;
use Illuminate\Support\Facades\Hash;
use Modules\Wishlist\Entities\Wishlist;
use Illuminate\Support\Facades\Validator;
use App\Notifications\AdWishlistNotification;
use App\Http\Resources\Api\CustomerPlanResource;

class CustomerController extends Response
{
    use MobileTrait;

    public function passwordUpdate(Request $request)
    {
        $customer = User::findOrFail(auth('api')->id());

        $validator = Validator::make($request->all(), [
            'current_password' => ['required', new MatchOldPassword],
            'password' => 'required|string|min:8|confirmed',
            'password_confirmation' => 'required',
        ]);

        if ($validator->fails()) {
            return parent::sendError("validation Error", $validator->errors()->first());
        }

        $password_check = Hash::check($request->current_password, $customer->password);

        if ($password_check) {
            $customer->update(['password' => bcrypt($request->password)]);

            return parent::sendResponse(200, "Password Updated", $customer);
        } else {
            return parent::sendError('Invalid', "Current password didn't match with our records");
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function profileUpdate(Request $request)
    {
        $user_id = auth()->guard('api')->id();

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => "required|email|unique:users,email," . $user_id,
            'phone' => "sometimes|nullable",
            'web' => "sometimes|nullable|url",
            'image' => "sometimes|nullable",
            'show_phone' => "sometimes|nullable",
            'bio' => 'required|max:500',
            'location' => "nullable",
        ]);
        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation error',
                'error' => $validator->errors()->all()
            ]);
        }


        try {
            $base64 = $request->base64 ?? true;
            $customer = User::find(auth('api')->id());

            $customer->update($request->except(['image', 'base64']));

            if ($base64 && $request->image) {
                $url = uploadBase64FileToPublic($request->image, 'uploads/customer/');
                $customer->update(['image' => $url]);
            } else {
                if ($request->hasFile('image') && $request->file('image')->isValid()) {
                    $url = $request->image->move('uploads/customer', $request->image->hashName());
                    $customer->update(['image' => $url]);
                }
            }

            return response()->json([
                'success' => true,
                'message' => 'Profile updated successflly',
                'data' => $customer
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Something is wrong',
                'error' => [$e->getMessage()]
            ]);
        }
    }

    public function allAds(Request $request)
    {
        $filter = $request->filter;
        $sort = $request->sort;
        $paginate = $request->paginate ?? false;

        $ads = Ad::with(['category','galleries'])->whereUserId(auth('api')->id());

        if ($filter == 'active') {
            $ads = $ads->whereStatus('active');
        } elseif ($filter == 'sold') {
            $ads = $ads->whereStatus('sold');
        }

        if ($sort == 'latest') {
            $ads = $ads->latest('id');
        } elseif ($sort == 'popular') {
            $ads = $ads->latest('total_views');
        } elseif ($sort == 'featured') {
            $ads = $ads->where('featured', 1);
        } else {
            $ads = $ads->latest('id');
        }

        if ($paginate) {
            $ads = $ads->simplePaginate($paginate);
        } else {
            $ads = $ads->get();
        }

        return parent::sendResponse(200, "Customer Ads", $ads);
    }

    public function recentAds(Request $request)
    {
        $paginate = $request->paginate ?? false;

        $recent_ads = Ad::customerData(true)->with('category')->latest('id');

        if ($paginate) {
            $recent_ads = $recent_ads->simplePaginate($paginate);
        } else {
            $recent_ads = $recent_ads->get();
        }

        return parent::sendResponse(200, "Recent Ads", $recent_ads);
    }

    public function activeAd(Ad $ad)
    {
        if ($ad->user_id != auth('api')->id()) {
            return parent::sendError('Invalid Ads', "Invalid Ads");
        }

        if ($ad->status == 'active') {
            return parent::sendError('Invalid Ads', 'Ad is already active');
        }

        $ad->update([
            'status' => 'active'
        ]);

        return parent::sendResponse(200, 'Ad mark as active', $ad);
    }

    public function expireAd(Ad $ad)
    {
        if ($ad->user_id != auth('api')->id()) {
            return parent::sendError('invalid Ad', 'You are not allowed to do this action');
        }

        if ($ad->status != 'active') {
            return parent::sendError('Invalid Ad', 'Ad is already sold');
        }

        $ad->update([
            'status' => 'sold'
        ]);

        return parent::sendResponse(200, 'Ad mark as sold', $ad);
    }

    public function reActiveAd(Ad $ad)
    {
        $setting = Setting::first();
        $user = User::find($ad->user_id);
        if ($ad->user_id == auth()->guard('api')->id()) {
            if ($user->coupons <= 0) {
                return parent::sendError('Invalid Coupons', 'You don\'t have enough coupons to active the ads');
            }
            $validity = \Carbon\Carbon::now()->addDays($setting->ad_valid_day);
            $ad->update(['validity' => $validity, 'status' => 'active']);
            $user->coupons = $user->coupons - 1;
            $user->save();
            return parent::sendResponse(200, 'Ad mark as active', $ad);
        } else {
            return parent::sendError('invalid Ad', 'You are not allowed to do this action');
        }
    }

    public function deleteAd(Ad $ad)
    {
        if ($ad->user_id != auth('api')->id()) {
            return parent::sendError('invalid Ad', 'You are not allowed to do this action');
        }

        $ad->galleries()->delete();
        $ad->wishlists()->delete();
        $ad->adFeatures()->delete();
        $ad->productCustomFields()->delete();
        $ad->adSize()->delete();
        $ad->adColor()->delete();
        $ad->orders()->delete();
        $ad->review()->delete();
        $ad->delete();


        $this->addeleteNotification();
        return parent::sendResponse(200, 'Ad deleted successfully', []);
    }

    public function deleteCustomer()
    {
        $customer = User::find(auth('api')->id());
        $customer->ads()->delete();
        $customer->delete();
        auth('api')->logout();
        return parent::sendResponse(200, 'Account deleted successfully');
    }

    public function favouriteAddRemove(Ad $ad)
    {
        $customer = User::find(auth('api')->id());


        $wishlist = Wishlist::where('ad_id', $ad->id)->where('user_id', $customer->id)->first();

        if (isset($ad) && $ad->user_id == $customer->id) {
            return parent::sendResponse(200, trans('You can\'t add your owen ads to favorite list'), $wishlist);
        }



        if (isset($wishlist)) {
            $wishlist->delete();
            return parent::sendResponse(200, 'Ad removed from wishlist');
        } else {
            $wishlist = new Wishlist();
            $wishlist->ad_id = $ad->id;
            $wishlist->user_id = $customer->id;
            $wishlist->save();


            if (checkSetup('mail')) {
                $customer->notify(new AdWishlistNotification($customer, 'add', $ad->slug));
            }
            return parent::sendResponse(200, 'Ad added to your wishlist', $wishlist);
        }
    }

    public function transactions()
    {
        $user = auth('api')->user();
        $myTransactions = Transaction::with('ads')->where('user_id', $user->id)->latest('id')->get();
        return response()->json([
            'success' => true,
            'data' => $myTransactions
        ]);
    }

    public function favouriteAds(Request $request)
    {
        $paginate = $request->paginate ?? false;

        $ads = Wishlist::with('ad')->whereUserId(auth('api')->id())->latest();

        if ($paginate) {
            $ads = $ads->simplePaginate($paginate);
        } else {
            $ads = $ads->get();
        }

        return parent::sendResponse(200, 'User Favorite Add List', $ads);
    }

    public function activityLogs()
    {

        $user = User::find(auth('api')->id());
        $notifications = $user->notifications()->latest()->limit(5)->get();

        return parent::sendResponse(200, "User Notification", $notifications);
    }

    public function dashboardOverview()
    {
        $now = Carbon::now();

        $ads = Ad::customerData(true)->get();
        $posted_ads_count = $ads->count();
        $active_ads_count = $ads->where('status', 'active')->count();
        $sold_ads_count = $ads->where('status', 'sold')->count();
        $expire_ads_count = $ads->where('validity', '<=', $now)->count();

        $recent_ad = Ad::latest('id')->limit(5)->get();
        $user = User::find(auth('api')->id());

        $data = [
            'posted_ads_count' => $posted_ads_count,
            'expire_ads_count' => $expire_ads_count,
            'active_ads_count' => $active_ads_count,
            'sold_ads_count' => $sold_ads_count,
            'coupons' => $user->coupons ?? 0,
            'ads' => $recent_ad,
        ];

        return parent::sendResponse(200, "Dashboard Overview", $data);
    }

    public function adsViewsSummery()
    {
        $bar_chart_datas = array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

        for ($i = 0; $i < 12; $i++) {
            $bar_chart_datas[$i] = (int)Ad::customerData(true)
                ->select('total_views')
                ->whereYear('created_at', date('Y'))
                ->whereMonth('created_at', $i + 1)
                ->sum('total_views');
        }

        return response()->json([
            'success' => true,
            'data' => [
                'month_wise_views' => $bar_chart_datas
            ]
        ]);
    }

    public function planLimit()
    {
        return response()->json([
            'success' => true,
            'plan' => new CustomerPlanResource(auth('api')->user()->userPlan)
        ]);
    }

    public function planUpgradeTesting(Request $request)
    {
        auth('api')->user()->userPlan->update([
            'ad_limit' => $request->ad_limit,
            'featured_limit' => $request->featured_limit,
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Plan updated successfully',
            'plan' => new CustomerPlanResource(auth('api')->user()->userPlan)
        ]);
    }


    public function rateReview(Request $request)
    {

        $auth_id = auth('api')->id();
        // $customer = User::find($auth_id);
        $existReview = Review::where('seller_id',$request->seller_id)->where('user_id', $auth_id)->first();
        if ($auth_id == $request->user) {
            return parent::sendResponse(200, "You can't review yourself");
        } elseif ($existReview) {

            return parent::sendResponse(200, 'You already reviewed this seller');

        } else {
            $review = new Review();
            $review->seller_id = $request->seller_id;
            $review->stars = $request->stars;
            $review->comment = $request->comment;
            $review->user_id = $auth_id;
            $review->save();
            return parent::sendResponse(200, 'Review is submitted successfully');

        }


    }

    public function adBlock($ad_id)
    {
        $ad = Ad::find($ad_id);
        if ($ad->user_id == auth('api')->id()) {
            return parent::sendError("Invalid", 'You are not allowed to block your own ads', 200, '');
        }else{
            $user_id = auth('api')->id();
            DB::table('user_ad_block')->insert(['user_id'=>$user_id, 'ad_id' => $ad_id, 'created_at' => now(), 'created_by' =>$user_id]);
        }

        return parent::sendResponse(200, 'Ad blocked successfully', [], 1,'');
    }

}
