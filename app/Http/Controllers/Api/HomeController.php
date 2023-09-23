<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AdsSize;
use App\Models\Cms;
use App\Models\Color;
use App\Models\RecentViewAd;
use App\Models\Setting;
use App\Models\Slider;
use App\Models\User;
use App\Models\UserFollower;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\View;
use Modules\Ad\Entities\Ad;
use Modules\Ad\Transformers\AdResource;
use Modules\Blog\Entities\Post;
use Modules\Brand\Entities\Brand;
use Modules\Category\Entities\Category;
use Modules\Category\Transformers\CategoryResource;
use Modules\Currency\Entities\Currency as EntitiesCurrency;
use Modules\Language\Entities\Language;
use Modules\Review\Entities\Review;

class HomeController extends Response
{
    /**
     * View Home page
     * @return View
     * @return void
     */
    public function index()
    {
        $data = [];
        $topCategories = CategoryResource::collection(Category::active()
            ->with('subcategories', function ($q) {
                $q->with('childCategory')->where('status', 1);
            })->withCount('ads as ad_count')->where('status', '!=', 'pending')->latest('ad_count')->take(6)->get());

        $data['topCategories'] = $topCategories;

        $data['topCountry'] = DB::table('ads')
            ->select('country', DB::raw('count(*) as total'))
            ->orderBy('total', 'desc')
            ->groupBy('country')
            ->limit(6)
            ->get();

        $data['totalAds'] = Ad::activeCategory()->where('status', '!=', 'pending')->active()->count();

        return $this->homePage1($data);
    }


    /**
     * Return homapge 1 layouts views
     *
     * @param array $data
     *
     * @return \Illuminate\Http\Response|object
     */
    public function homePage1($data)
    {
        $ad_data = Ad::activeCategory()->where('status', '!=', 'pending')->where('validity', '>', now())->with(['adFeatures', 'customer', 'category:id,name,icon', 'productCustomFields' => function ($q) {
            $q->select('id', 'ad_id', 'custom_field_id', 'value', 'order')->with(['customField' => function ($q) {
                $q->select('id', 'name', 'type', 'icon', 'order', 'listable')
                    ->where('listable', 1)
                    ->oldest('order')
                    ->without('customFieldGroup');
            }])->latest();
        }]);

        $ads = AdResource::collection($ad_data->get());
        $categories = Category::active()->with('subcategories', function ($q) {
            $q->with('childCategory')->where('status', 1);
        })->get();
        $recommendedAds = $ad_data->where('featured', true)->take(12)->latest()->get();

        $_latestAds = Ad::activeCategory()->with(['customer', 'category:id,name,icon'])->where('featured', '!=', 1)->where('status', 'active')->validate()->take(12)->latest();

        if(Auth::guard('api')->check()){
            $user_id = Auth::guard('api')->id();
            $block_ads_ids = DB::table('user_ad_block')->where('user_id',$user_id)->pluck('ad_id')->toArray();
            $ad_data->whereNotIn('id',$block_ads_ids);
            $_latestAds->whereNotIn('id',$block_ads_ids);
        }
        $recentVirews = RecentViewAd::with('ads')->where('session_id', Session::getId())->get();

        if (count($recentVirews) >= 6) {

            $data['recentVirews'] = $recentVirews->take(6);
        } else {
            $data['recentVirews'] = null;
        }

        $data['ads'] = collectionToResource($ads);
        $data['categories'] = $categories;
        $data['categoriesviews'] = $categories->take(2);
        $data['staff_picks'] = $ads->where('tags', 'staff_picks');

        $data['trending_streetwears'] = $ads->where('tags', 'trending_streetwear');

        $data['recommendedAds'] = collectionToResource($recommendedAds);
        $data['latestAds'] = AdResource::collection($_latestAds->get());

        $data['verified_users'] = User::whereNotNull('email_verified_at')->count();

        $countryCount =  DB::table('ads')
            ->select('country', DB::raw('count(*) as total'))
            ->groupBy('country')
            ->get();
        $data['country_location'] = $countryCount->count();

        $data['pro_members_count'] = User::whereHas('userPlan', function ($q) {
            $q->where('badge', true);
        })->count();
        $data['brands'] = Brand::all();
        $data['sliders'] = Slider::where('status', true)->limit(6)->get();
        $data['setting'] = Setting::first();
        $data['currencies'] = EntitiesCurrency::first();
        $data['deals'] = $ads->where('price', '<', $data['setting']->deals_under_price);
        $data['blogs'] = Post::orderBy('id', 'desc')->take(3)->get();


        return parent::sendResponse(200, "Home Page", $data, true, null);
    }

    public function lenguageSync()
    {
        $languages = Language::all();

        $allLen = [];

        foreach ($languages as $key => $language) {
            $path = base_path('resources/lang/' . $language->code . '.json');
            $translations = json_decode(file_get_contents($path), true);
            $allLen[] = [
                "name" => $language->name,
                "code" => $language->code,
                "icon" => $language->icon,
                "direction" => $language->direction,
                "created_at" => $language->created_at,
                "updated_at" => $language->updated_at,
                "json_data" => $translations,
            ];
        }

        return parent::sendResponse('200', "All lenguange with translation", $allLen, true);
    }

    public function getLenguage($code)
    {
        $path = base_path('resources/lang/' . $code . '.json');
        $language = Language::where('code', $code)->first();
        $translations = json_decode(file_get_contents($path), true);
        return parent::sendResponse(200, "lenguage json", $translations, true);
    }

    public function color()
    {
        $colors = Color::where('status', true)->get();
        return response()->json([
            'success' => true,
            'data' => $colors
        ]);
    }
    public function brand()
    {
        $brands = Brand::all();
        return response()->json([
            'success' => true,
            'data' => $brands
        ]);
    }
    public function size($subcategory)
    {
        if (!$subcategory) {
            return response()->json([
                'success' => false,
                'message' => ' Please select a subcategory',
                'data' => []
            ]);
        }
        $sizes = AdsSize::with(['subCategory', 'category'])->where('sub_category_id', $subcategory)->where('status', 1)->get();
        return response()->json([
            'success' => true,
            'data' => $sizes
        ]);
    }


    public function seller(Request $request)
    {
        $discription = [
            'paginate' => "Optional peram ,must be number default value 16"
        ];


        $paginate = $request->has('paginate') ? $request->paginate : 16;
        $sellers = User::with('ads')->paginate($paginate)->withQueryString();

        return parent::sendResponse(200, "Seller List", $sellers, true, $discription);
    }

    public function profile(User $user, Request $request)
    {

        $reviews = Review::with('user')->where('seller_id', $user->id)->whereStatus(1)->get();


        $rating_details = [
            'total' => $reviews->count(),
            'rating' => $reviews->sum('stars'),
            'average' => number_format($reviews->avg('stars')),
        ];


        $ad_data = Ad::where('user_id', $user->id)->activeCategory()->with(['customer', 'category:id,name,icon', 'productCustomFields' => function ($q) {
            $q->select('id', 'ad_id', 'custom_field_id', 'value', 'order')->with(['customField' => function ($q) {
                $q->select('id', 'name', 'type', 'icon', 'order', 'listable')
                    ->where('listable', 1)
                    ->oldest('order')
                    ->without('customFieldGroup');
            }])->latest();
        }])->active()->latest();

        $data['rating_details'] = $rating_details;
        $data['reviews'] = $reviews;
        $data['recent_ads'] = AdResource::collection($ad_data->paginate($request->has('paginate') ? $request->paginate : 10));
        $data['total_active_ad'] = Ad::where('user_id', $user->id)->activeCategory()->active()->count();
        $data['social_medias'] = $user->socialMedia;
        $data['user'] = $user;


        $discription = [
            'paginate' => "Optional peram ,must be number default value 10"
        ];

        return parent::sendResponse(200, "User Public Profile", $data, true, $discription);
    }


    public function sellerFollow(User $user, $status)
    {



        if (!isset($status)) {
            return response()->json([
                'success' => false,
                'message' => "Status must be follow and unfollow"
            ]);
        }

        $userFollower = UserFollower::where('follower_id', auth('api')->id())->where('seller_id', $user->id)->first();

        if (isset($userFollower) && $status == "unfollow") {
            $userFollower->delete();
        }

        if (!isset($userFollower) && $status == "follow") {
            $newUserFollower = new UserFollower();
            $newUserFollower->seller_id = $user->id;
            $newUserFollower->follower_id = auth('api')->id();
            $newUserFollower->save();
        }
        if ($status == "unfollow") {
            $message = "Seller unfollowing successful";
        } else {
            $message = "Seller following successful";
        }

        return response()->json([
            'success' => true,
            'message' => $message
        ]);
    }
}
