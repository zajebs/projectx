<?php

namespace App\Http\Controllers\Frontend;

use App\Actions\Frontend\ProfileUpdate;
use App\Http\Controllers\Controller;
use App\Models\Admin\ShipingLocations;
use App\Models\Setting;
use App\Models\Transaction;
use App\Models\User;
use App\Models\UserFollower;
use App\Models\UserPlan;
use App\Notifications\AdDeleteNotification;
use App\Rules\MatchOldPassword;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Modules\Ad\Entities\Ad;
use Modules\Category\Entities\Category;
use Modules\Coupon\Entities\Coupon;
use Modules\Currency\Entities\Currency;
use Modules\Plan\Entities\Plan;
use Modules\Review\Entities\Review;
use Modules\Wishlist\Entities\Wishlist;

class DashboardController extends Controller
{
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function dashboard()
    {
        $now = Carbon::now();
        $is_verify = auth('user')->user();
        if ($is_verify->email_verified_at == null) {
            return redirect()->route('verification.notice');
        }

        storePlanInformation();
        $auth_user_plan = session('user_plan');
        $authUser = auth('user')->user();
        $ads = Ad::customerData()->get();
        $activities = auth('user')->user()->notifications()->latest()->limit(5)->get();
        $active_ads_count = $ads->where('status','active')->count();
        $recent_ads = Ad::customerData()->with('category')->latest('id')->get()->take(10);
        $expire_ads_count = $ads->where('validity', '<=', $now)->count();
        $posted_ads_count = $ads->where('user_id', $authUser->id)->count();
        $sold_ads_count = $ads->where('status', 'sold')->where('user_id', $authUser->id)->count();

        // bar chart by year
        $bar_chart_datas = array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

        for ($i = 0; $i < 12; $i++) {
            $bar_chart_datas[$i] = (int)Ad::customerData()
                ->select('total_views')
                ->whereYear('created_at', date('Y'))
                ->whereMonth('created_at', $i + 1)
                ->sum('total_views');
        }

        $ads = Ad::where('user_id', $authUser->id)->get('id');
        $ads_array = [];
        foreach ($ads as $id) {

            array_push($ads_array, $id->id);
        }

        $reviews = Review::with(['ads' => function ($q) use ($authUser) {
            $q->with(['category', 'subcategory', 'childcategory'])->where('user_id', $authUser->id);
        }])->where('seller_id', $authUser->id)->get();

        $rating_details = [
            'total' => $reviews->count(),
            'rating' => $reviews->sum('stars'),
            'average' => number_format($reviews->avg('stars')),
        ];

        $userFollower = UserFollower::where('seller_id', $authUser->id)->count();


        $query = Ad::customerData();

        if (request()->has('keyword') && request()->keyword != null) {
            $keyword = request('keyword');
            $query->where('title', 'LIKE', "%$keyword%");
        }

        if (request()->has('category') && request()->category != null) {
            $query->whereHas('category', function ($q) {
                $q->where('slug', request('category'));
            });
        }

        if (request()->has('sort_by') && request()->sort_by != null && request('sort_by') == 'oldest') {
            $query->orderBy('id', 'ASC');
        } else {
            $query->orderBy('id', 'DESC');
        }

        $ads = $query->limit(5)->get();
        $currency = Currency::first();

        $user = Auth::user();

        return view('frontend.dashboard', [
            'activities' => $activities,
            'recent_ads' => $recent_ads,
            'sold_ads_count' => $sold_ads_count,
            'active_ads_count' => $active_ads_count,
            'posted_ads_count' => $posted_ads_count,
            'expire_ads_count' => $expire_ads_count,
            'bar_chart_datas' => $bar_chart_datas,
            'user_plan' => $auth_user_plan,
            'rating_details' => $rating_details,
            'userFollower' => $userFollower,
            'ads' => $ads,
            'currency' => $currency,
            'user' => $user
        ]);
    }

    public function editAd(Ad $ad)
    {
        $data['user'] = auth()->user();
        $data['ad'] = $ad;
        return view('frontend.edit-ad', $data);
    }

    public function myAds()
    {

        $is_verify = auth('user')->user();

        if ($is_verify->email_verified_at == null) {
            return redirect()->route('verification.notice');
        }

        $data['categories'] = Category::active()->get();
        $data['user'] = auth('user')->user();

        $query = Ad::customerData();

        if (request()->has('keyword') && request()->keyword != null) {
            $keyword = request('keyword');
            $query->where('title', 'LIKE', "%$keyword%");
        }

        if (request()->has('category') && request()->category != null) {
            $query->whereHas('category', function ($q) {
                $q->where('slug', request('category'));
            });
        }

        if (request()->has('sort_by') && request()->sort_by != null && request('sort_by') == 'oldest') {
            $query->orderBy('id', 'ASC');
        } else {
            $query->orderBy('id', 'DESC');
        }

        $data['ads'] = $query->paginate(5)->withQueryString();

        return view('frontend.myad', $data);
    }


    public function myCoupons()
    {
        $is_verify = auth('user')->user();

        if ($is_verify->email_verified_at == null) {
            return redirect()->route('verification.notice');
        }

        $coupons = Coupon::where('status', 1)->get();
        return view('frontend.my_coupons', compact('coupons'));
    }


    public function deleteMyAd(Ad $ad)
    {
        $ad->galleries()->delete();
        $ad->wishlists()->delete();
        $ad->adTags()->delete();
        $ad->orders()->delete();
        $ad->review()->delete();

        $ad->delete();


        flashSuccess('One of your ad has deleted');
        $this->addeleteNotification();
        return back();
    }

    public function addeleteNotification()
    {
        // Send ad create notification
        $user = auth('user')->user();
        if (checkSetup('mail')) {
            $user->notify(new AdDeleteNotification($user));
        }
    }

    public function myAdStatus(Ad $ad)
    {
        if ($ad->status == 'active') {
            $ad->status = 'sold';
        } elseif (($ad->status == 'sold')) {
            $ad->status = 'active';
        }
        $ad->update();

        flashSuccess('Status updated successfully!');
        return back();
    }

    public function favourites()
    {

        $is_verify = auth('user')->user();

        if ($is_verify->email_verified_at == null) {
            return redirect()->route('verification.notice');
        }

        $wishlistsIds = Wishlist::select('ad_id')
            ->customerData()
            ->pluck('ad_id')
            ->all();


        $query = Ad::select(['id', 'title', 'slug', 'thumbnail', 'price', 'status', 'category_id', 'created_at'])
            ->with('category:id,name')
            ->whereIn('id', $wishlistsIds);

        if (request()->has('keyword') && request()->keyword != null) {
            $keyword = request('keyword');
            $query->where('title', 'LIKE', "%$keyword%");
        }

        if (request()->has('category') && request()->category != null) {
            $query->whereHas('category', function ($q) {
                $q->where('slug', request('category'));
            });
        }

        if (request()->has('sort_by') && request()->sort_by != null && request('sort_by') == 'oldest') {
            $query->orderBy('id', 'ASC');
        } else {
            $query->orderBy('id', 'DESC');
        }

        $data['wishlists'] = $query->paginate(5)->withQueryString();

        return view('frontend.favourite-ads', $data);
    }

    public function message()
    {
        $user['user'] = auth()->user();
        return view('frontend.message', $user);
    }

    public function plansBilling()
    {
        storePlanInformation();
        $data['user_plan'] = session('user_plan');

        if ($data['user_plan']->subscription_type == 'recurring' && $data['user_plan']->current_plan_id) {
            $data['user_plan'] = $data['user_plan'];
            $data['current_plan'] = Plan::find($data['user_plan']->current_plan_id);
        }

        $data['plan_info'] = UserPlan::customerData()->firstOrFail();
        $data['transactions'] = Transaction::with('plan')->customerData()->latest()->get()->take(5);

        return view('frontend.plans-billing', $data);
    }

    public function cancelPlan()
    {
        $user_plan = auth('user')->user()->userPlan;
        $plan = Plan::find($user_plan->current_plan_id);

        $user_plan->update([
            'ad_limit' => $user_plan->ad_limit ? $user_plan->ad_limit - $plan->ad_limit : 0,
            'featured_limit' => $user_plan->featured_limit ? $user_plan->featured_limit - $plan->featured_limit : 0,
            'current_plan_id' => null,
            'expired_date' => null,
        ]);

        flashSuccess('Plan cancelled successfully!');
        return back();
    }

    public function accountSetting()
    {

        $is_verify = auth('user')->user();

        if ($is_verify->email_verified_at == null) {
            return redirect()->route('verification.notice');
        }

        $user = auth('user')->user();
        $social_medias = $user->socialMedia;
        $locations = ShipingLocations::where('status', true)->get();

        return view('frontend.account-setting', compact('user', 'social_medias', 'locations'));
    }

    public function profileUpdate(Request $request)
    {


        $customer = auth('user')->user();

        $request->validate([
            'name' => "required",
            'username' => "required",
            'location' => "required",
            'email' => "required|email|unique:users,email,{$customer->id}",
            'phone' => "sometimes|nullable",
            'show_phone' => "sometimes|nullable",
            'bio' => 'required|max:500'

        ]);

        try {
            $customer = ProfileUpdate::update($request, $customer);

            if ($customer) {
                flashSuccess('Profile Updated Successfully');
                return back();
            }
        } catch (\Exception $e) {
            flashError($e->getMessage());
            return back();
        }
    }

    public function passwordUpdate(Request $request)
    {
        $request->validate([
            'current_password' => ['required', new MatchOldPassword],
            'password' => 'required|string|min:8|confirmed',
            'password_confirmation' => 'required',
        ]);

        $password_check = Hash::check($request->current_password, auth('user')->user()->password);

        if ($password_check) {
            $user = User::findOrFail(auth('user')->id());
            $user->update([
                'password' => bcrypt($request->password),
                'updated_at' => Carbon::now(),
            ]);

            flashSuccess('Password Updated Successfully');
            return back();
        } else {
            flashError('Something went wrong');
            return back();
        }
    }

    public function socialUpdate(Request $request)
    {
        // return $request;
        $user = auth('user')->user();

        $user->socialMedia()->delete();
        // $user->socialMedia()->createMany($request->all());

        $social_medias = $request->social_media;
        $urls = $request->url;

        foreach ($social_medias as $key => $value) {
            if ($value) {
                $user->socialMedia()->create([
                    'social_media' => $value,
                    'url' => $urls[$key],
                ]);
            }
        }

        flashSuccess('Social Media Updated Successfully');
        return back();


        // $request->validate([
        //     'current_password' => ['required', new MatchOldPassword],
        //     'password' => 'required|string|min:8|confirmed',
        //     'password_confirmation' => 'required',
        // ]);
        // $password_check = Hash::check($request->current_password, auth('user')->user()->password);

        // if ($password_check) {
        //     $user = User::findOrFail(auth('user')->id());
        //     $user->update([
        //         'password' => bcrypt($request->password),
        //         'updated_at' => Carbon::now(),
        //     ]);

        //     flashSuccess('Password Updated Successfully');
        //     return back();
        // } else {
        //     flashError('Something went wrong');
        //     return back();
        // }
    }

    public function addToWishlist(Request $request)
    {
        $ad = Ad::findOrFail($request->ad_id);
        $data = Wishlist::where('ad_id', $request->ad_id)->whereUserId($request->user_id)->first();
        if ($data) {
            $data->delete();

            $user = auth('user')->user();
            $seller = User::findOrFail($ad->user_id);
            // if (checkSetup('mail')) {
            //     $seller->notify(new AdWishlistNotification($user, 'remove', $ad->slug));
            // }
            flashSuccess('Ad removed from wishlist');
        } else {
            Wishlist::create([
                'ad_id' => $request->ad_id,
                'user_id' => $request->user_id
            ]);

            $user = auth('user')->user();

            // if (checkSetup('mail')) {
            //     $seller->notify(new AdWishlistNotification($user, 'add', $ad->slug));
            // }
            flashSuccess('Ad added to wishlist');
        }
        resetSessionWishlist();

        return back();
    }

    public function deleteAccount(User $customer)
    {
        $customer->delete();
        Auth::guard('user')->logout();
        return redirect()->route('users.login');
    }

    /**
     * Update ad status to expire
     *
     * @param Ad $ad
     *
     * @return void
     */
    public function markExpired(Ad $ad)
    {
        $ad->update([
            'status' => 'sold'
        ]);

        flashSuccess('Status updated successfully!');
        return back();
    }

    /**
     * Update ad status to expire
     *
     * @param Ad $ad
     *
     * @return void
     */
    public function markActive(Ad $ad)
    {
        $ad->update([
            'status' => 'active'
        ]);

        flashSuccess('Status updated successfully!');
        return back();
    }

    /**
     * View Post Rules Page
     *
     * @return View
     */
    public function postRules()
    {
        return view('frontend.posting-rules')->withSetting(Setting::first());
    }


    public function myAddresses()
    {
        return view('frontend.my-addresses');
    }


    public function mySizes(Request $request)
    {
        $auth_id = Auth::id();

        $my_category = Ad::select('category_id')->with(['category:id,name,icon'])->where('user_id', $auth_id)->groupBy('category_id')->get();

        $my_scategory = Ad::select('category_id', 'subcategory_id')->with(['subcategory:id,name'])->where('user_id', $auth_id)->groupBy('subcategory_id')->get();


        $my_size = Ad::select('size_id', 'category_id', 'subcategory_id')->with(['adSize:id,size'])->where('user_id', $auth_id)->groupBy('size_id')->get();


        return view('frontend.my-sizes', compact('my_category', 'my_scategory', 'my_size'));
    }

    public function mysettings()
    {
        return view('frontend.my-settings');
    }

    public function usernameValid(Request $request)
    {
        $checkusername = User::where('username', $request->username)->first();

        if ($checkusername) {
            if ($checkusername->id == Auth::id()) {
                $result = 3;
                return response()->json(['success' => 'This is you current username', 'result' => $result]);
            } else {
                $result = 1;
                return response()->json(['success' => 'Username already taken ', 'result' => $result]);
            }
        } else {
            $result = 2;
            return response()->json(['success' => 'Username is available', 'result' => $result]);
        }

    }

}
