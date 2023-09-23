<?php

namespace App\Http\Controllers\Frontend;

use Carbon\Carbon;
use App\Models\Cms;
use App\Models\User;
use App\Models\Admin;
use App\Models\Slider;
use App\Models\AdsTags;
use App\Models\Setting;
use App\Models\Customer;
use App\Models\HelpReason;
use App\Models\BlogComment;
use App\Models\ContactHelp;
use Modules\Ad\Entities\Ad;
use App\Models\RecentViewAd;
use App\Models\UserFollower;
use Illuminate\Http\Request;
use Modules\Faq\Entities\Faq;
use App\Models\PaymentSetting;
use Modules\Blog\Entities\Post;
use Modules\Plan\Entities\Plan;
use App\Models\RequestedProduct;
use Illuminate\Support\Facades\DB;
use Tymon\JWTAuth\Facades\JWTAuth;
use Modules\Coupon\Entities\Coupon;
use Modules\Review\Entities\Review;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\View;
use Modules\Contact\Entities\Contact;
use Modules\Faq\Entities\FaqCategory;
use App\Models\Admin\ShipingLocations;
use Illuminate\Support\Facades\Session;
use Modules\Ad\Transformers\AdResource;
use Modules\Blog\Entities\PostCategory;
use Modules\Category\Entities\Category;
use Modules\Currency\Entities\Currency;
use Modules\Wishlist\Entities\Wishlist;
use App\Notifications\LogoutNotification;
use Illuminate\Support\Facades\Validator;
use App\Notifications\WelcomeNotification;
use Modules\Category\Entities\SubCategory;
use Illuminate\Support\Facades\Notification;
use App\Notifications\AdWishlistNotification;
use Modules\Testimonial\Entities\Testimonial;
use App\Services\Midtrans\CreateSnapTokenService;
use Modules\Category\Transformers\CategoryResource;
use Modules\CustomField\Entities\ProductCustomField;
use Modules\Currency\Entities\Currency as EntitiesCurrency;

class FrontendController extends Controller
{
    /**
     * View Home page
     * @return \Illuminate\Http\Response
     * @return void
     */
    public function index()
    {
        // $data = DB::table('ads')->where('id',23)->first();
        // $data->tag2 = json_decode($data->tags,true);
        // dd($data);
        $data = [];
        $topCategories = CategoryResource::collection(Category::active()->with('subcategories', function ($q) {
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
     * @return View
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
        $categories = CategoryResource::collection(Category::active()->with('subcategories', function ($q) {
            $q->where('status', 1);
        })->get());
        $recommendedAds = $ad_data->where('featured', true)->take(12)->latest()->get();

        $latestAds = AdResource::collection(Ad::activeCategory()->with(['customer', 'category:id,name,icon'])->where('featured', '!=', 1)->where('status', 'active')->validate()->take(12)->latest()->get());
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
        $data['latestAds'] = collectionToResource($latestAds);

        $data['verified_users'] = User::whereNotNull('email_verified_at')->count();

        $countryCount =  DB::table('ads')
            ->select('country', DB::raw('count(*) as total'))
            ->groupBy('country')
            ->get();
        $data['country_location'] = $countryCount->count();

        $data['pro_members_count'] = User::whereHas('userPlan', function ($q) {
            $q->where('badge', true);
        })->count();

        $data['sliders'] = Slider::where('status', true)->limit(6)->get();
        $data['setting'] = Setting::first();
        $data['currencies'] = EntitiesCurrency::first();
        $data['deals'] = $ads->where('price', '<', $data['setting']->deals_under_price);
        $data['blogs'] = Post::orderBy('id', 'desc')->take(3)->get();
        $data['currency'] = Currency::first();

        return view('frontend.index', $data);
    }


    /**
     * Return homepage 2 layouts views
     *
     * @param Array $data
     *
     * @return View
     */
    public function homePage2($data)
    {
        $categories = CategoryResource::collection(Category::active()->withCount('ads as ad_count')->latest()->get());
        $recentads = AdResource::collection(Ad::activeCategory()->with('category', 'customer')->active()->latest('id')->get()->take(4));
        $featured_ad_data = Ad::activeCategory()->where('status', '!=', 'pending')->with(['customer', 'category:id,name,icon',])->active()->take(6)->latest()->get();
        $featuredad = AdResource::collection($featured_ad_data);
        $latestAds = AdResource::collection(Ad::activeCategory()->with(['customer', 'category:id,name,icon'])->active()->where('featured', '!=', 1)->take(6)->latest()->get());

        $data['categories'] = collectionToResource($categories);
        $data['featuredAds'] = collectionToResource($featuredad);
        $data['latestAds'] = collectionToResource($latestAds);
        $data['recentads'] = $recentads;

        $data['total_ads'] = Ad::activeCategory()->active()->count();

        return view('frontend.index_02', $data);
    }

    /**
     * Return homepage 3 layouts views
     *
     * @param Array $data
     * @return View
     */
    public function homePage3($data)
    {
        $categories = CategoryResource::collection(Category::active()->latest()->get());
        $plans = Plan::all();
        $featured_ad_data = Ad::activeCategory()->where('status', '!=', 'pending')->with(['customer', 'category:id,name,icon',])->active()->take(8)->latest()->get();
        $featuredad = AdResource::collection($featured_ad_data);
        $latestAds = AdResource::collection(Ad::activeCategory()->with(['customer', 'category:id,name,icon'])->active()->where('featured', '!=', 1)->take(8)->latest()->get());

        $data['featuredAds'] = collectionToResource($featuredad);
        $data['latestAds'] = collectionToResource($latestAds);
        $data['categories']  =  collectionToResource($categories);

        $data['plans']  = $plans;
        $data['total_ads'] = Ad::activeCategory()->active()->count();

        return view('frontend.index_03', $data);
    }


    /**
     * View Testimonial page
     *
     * @param  Testimonial
     * @return \Illuminate\Http\Response
     * @return void
     */
    public function about()
    {
        $testimonials = Testimonial::latest('id')->get();
        $cms = Cms::select(['about_body', 'about_video_thumb', 'about_background', 'about_body_lt'])->first();
        return view('frontend.about', compact('testimonials', 'cms'));
    }

    /**
     * View Faq page
     *
     *  @param  Faq
     * @return void
     */
    public function faq()
    {
        if (!enableModule('faq')) {
            abort(404);
        }
        $category_slug = request('category') ?? FaqCategory::first()->slug;
        $category = FaqCategory::where('slug', $category_slug)->first();
        $data['categories'] = FaqCategory::latest()->get(['id', 'name', 'slug', 'icon']);
        $data['faqs'] = Faq::where('faq_category_id', $category->id)->with('faq_category:id,name,icon')->get();

        return view("frontend.faq", $data);
    }

    /**
     * View Contact page
     *
     * @return void
     */
    public function contact()
    {
        if (!enableModule('contact')) {
            abort(404);
        }
        $contactHelps = ContactHelp::all();


        return view('frontend.contact', compact('contactHelps'));
    }

    /**
     * View Single Ad page
     *
     * @return void
     */
    public function adDetails(Ad $ad)
    {


        if ($ad->status == 'pending') {
            if ($ad->user_id != auth('user')->id()) {
                abort(404);
            }
        }

        $verified_seller = User::findOrFail($ad->user_id)->email_verified_at;
        $ad->increment('total_views');
        $ad = $ad->load(['customer', 'brand', 'adFeatures', 'galleries', 'productCustomFields.customField', 'adSize', 'subcategory', 'childcategory']);

        $lists = Ad::activeCategory()->select(['id', 'title', 'slug', 'price', 'thumbnail', 'category_id', 'country', 'is_accept_offer', 'is_smart_price', 'smart_price'])
            ->with(['category', 'adCountry', 'productCustomFields' => function ($q) {
                $q->select('id', 'ad_id', 'custom_field_id', 'value', 'order')->with(['customField' => function ($q) {
                    $q->select('id', 'name', 'type', 'icon', 'order', 'listable')
                        ->where('listable', 1)
                        ->oldest('order')
                        ->without('customFieldGroup');
                },])->latest();
            }])
            ->where('category_id', $ad->category_id)
            ->where('id', '!=', $ad->id)

            ->latest('id')->take(10)->get();


        $blogs = Post::orderBy('id', 'desc')->take(3)->get();
        $shipingLocations = ShipingLocations::where('status', true)->get();
        $currency = Currency::first();

        $recentVirews = RecentViewAd::with('ads')->where('session_id', Session::getId())->get();

        if (count($recentVirews) >= 6) {

            $recentVirews = $recentVirews->take(6);
        } else {
            $recentVirews = null;
        }

        $product_custom_field_groups = $ad->productCustomFields->groupBy('custom_field_group_id');

        $find = RecentViewAd::where('session_id', Session::getId())->where('ad_id', $ad->id)->first();

        if (!isset($find) || $find->count() > 0) {
            # code...

            $recentViewAds = new RecentViewAd();
            $recentViewAds->session_id  = Session::getId();
            $recentViewAds->ad_id       = $ad->id;
            $recentViewAds->created_at  = $ad->created_at;
            $recentViewAds->created_by  = $ad->user_id;
            $recentViewAds->updated_at  = $ad->updated_at;
            $recentViewAds->updated_by  = $ad->user_id;
            $recentViewAds->save();
        }

        $setting = Setting::first('admin_commission');

        $relatedProducts = Ad::where('child_category_id', $ad->child_category_id)
            ->whereNotIn('id', [$ad->id])
            ->where('status', true)->validate()->take(10)->get();

        $countproduct = Wishlist::where('ad_id', $ad->id)->count();

        $user = $ad->customer;
        $asFollower = UserFollower::where('follower_id', auth()->id())->where('seller_id', $user->id)->first();

        if (isset($asFollower)) {
            $isFoollwer = true;
        } else {
            $isFoollwer = false;
        }

        $ads = Ad::where('user_id', $user->id)->get('id');

        $ads_array = [];
        foreach ($ads as $id) {
            array_push($ads_array, $id->id);
        }
        $reviews = Review::with([
            'ads' => function ($q) use ($user) {
                $q->with(['category', 'subcategory', 'childcategory'])->where('user_id', $user->id);
            },
        ])
            ->where('seller_id', 'user_id')
            ->get();

        $rating_details = [
            'total' => $reviews->count(),
            'rating' => $reviews->sum('stars'),
            'average' => number_format($reviews->avg('stars')),
        ];

        $requestSend = false;

        if ($ad->status == "sold") {
            $findRequestedPRoduct = RequestedProduct::where('ads_id', $ad->id)->where('request_form', auth()->id())->first();
            if (isset($findRequestedPRoduct)) {

                $requestSend = true;
            } else {
                $requestSend = false;
            }
        }

        return view('frontend.single-ad', compact(
            'ad',
            'lists',
            'verified_seller',
            'product_custom_field_groups',
            'currency',
            'blogs',
            'recentVirews',
            'shipingLocations',
            'setting',
            'relatedProducts',
            'requestSend',
            'countproduct',
            'isFoollwer',
            'rating_details'
        ));
    }

    /**
     * View ad list page
     *
     * @return void
     */
    public function adList()
    {
        $data['adlistings'] = Ad::select('id', 'title', 'slug', 'user_id', 'category_id', 'subcategory_id', 'price', 'thumbnail', 'country', 'status')
            ->activeCategory()
            ->where('validity', '>', now())
            ->with(['category:id,name', 'productCustomFields' => function ($q) {
                $q->select('id', 'ad_id', 'custom_field_id', 'value', 'order')->with(['customField' => function ($q) {
                    $q->select('id', 'name', 'type', 'icon', 'order', 'listable')
                        ->where('listable', 1)
                        ->oldest('order')
                        ->without('customFieldGroup');
                }])->latest();
            }])
            ->latest('id')
            ->active()
            ->paginate(21);
        $data['categories'] = Category::active()->with('subcategories', function ($q) {
            $q->where('status', 1);
        })->latest('id')->get();

        $data['adMaxPrice'] = $price = DB::table('ads')->max('price');

        return view('frontend.ad-list', $data);
    }

    /**
     * View Get membership page
     *
     * @return void
     */
    public function getMembership()
    {
        if (!enableModule('price_plan')) {
            abort(404);
        }

        $data['plans'] = Plan::latest()->get();
        return view('frontend.get-membership', $data);
    }

    /**
     * View Priceplan page
     *
     * @return void
     */
    public function pricePlan()
    {
        if (!enableModule('price_plan')) {
            abort(404);
        }

        $plans = Plan::all();
        return view('frontend.price-plan', compact('plans'));
    }

    /**
     * View Signup page
     *
     * @return void
     */
    public function signUp()
    {
        return redirect()->route('frontend.index');
        $verified_users = User::where('email_verified_at', '!=', null)->count();

        return view('frontend.sign-up', compact('verified_users'));
    }

    /**
     * Show the form for creating a new resource.
     * @param  Customer
     * @param  Request $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        // return redirect()->route('frontend.index');
        $setting = setting();

        $rules = [
            'name' => "required",
            'username' => "required|unique:users,username",
            'email' => "required|email|unique:users,email",
            'password' => "required|confirmed|min:8|max:50",
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            if ($request->wantsJson()) {
                return response()->json(["error" => $validator->errors()], 200);
            } else {
                return redirect()->back()->withErrors($validator);
            }
        }

        $created = User::create([
            'name' => $request->name,
            'username' => $request->username,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);

        if ($created) {

            Auth::guard('user')->logout();
            Auth::guard('admin')->logout();
            flashSuccess('You have successfully registered.');
            Auth::guard('user')->login($created);

            $details = [
                'subject' => 'Welcome to 2life.lv',
                'greeting' => 'Hi ' . $created['name'] . ', ',
                'body' => 'You have successfully registered to 2life.lv',
                'email' => 'Your email is : ' . $created['email'],
                'thanks' => 'Thank you for using our 2life.lv . ',
            ];

            $admin = Admin::first();
            $admin_details = [
                'subject' => 'Register a new user',
                'greeting' => 'Hi ' . $admin->name . ', ',
                'body' => 'An user ' . $created['name'] . ' registered to 2life.lv',
                'email' => 'User email is : ' . $created['email'],
                'thanks' => 'Thank you for using our 2life.lv . ',
            ];

            Notification::route('mail', $created['email'])->notify(new WelcomeNotification($details));
            Notification::route('mail', $admin->email)->notify(new WelcomeNotification($admin_details));

            if ($setting->customer_email_verification == 1) {
                // return "success";

                return response()->json("verification", 200);
                // return redirect()->route('verification.notice');

            } else {

                $isverify = auth('user')->user();

                User::where('id', $isverify->id)->update([
                    'email_verified_at' => Carbon::now(),
                ]);

                if ($request->wantsJson()) {
                    return response()->json("success", 200);
                } else {
                    return redirect()->route('frontend.coupons');
                }
            }
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     *
     */
    public function frontendLogout()
    {
        $this->loggedoutNotification();
        auth()->guard('user')->logout();

        return redirect()->route('frontend.index');
    }

    public function loggedoutNotification()
    {

        $user = User::find(auth('user')->id());
        if (checkSetup('mail')) {
            $user->notify(new LogoutNotification($user));
        }
    }

    /**
     * View Terms & Condition page
     *
     * @return void
     */
    public function blog(Request $request)
    {
        if (!enableModule('blog')) {
            abort(404);
        }

        $query = Post::with('author')->withCount('comments');

        if ($request->has('category') && $request->category != null) {
            $query->whereHas('category', function ($q) {
                $q->where('slug', request('category'));
            });
        }

        if ($request->has('keyword') && $request->keyword != null) {
            $query->where('title', 'LIKE', "%$request->keyword%");
        }

        return view('frontend.blog', [
            'blogs' =>  $query->paginate(6),
            'recentBlogs' => Post::withCount('comments')->latest()->take(4)->get(),
            'topCategories' => PostCategory::latest()->take(6)->get(),
        ]);
    }

    /**
     * View Terms & Condition page
     *
     * @return void
     */
    public function singleBlog(Post $blog)
    {
        if (!enableModule('blog')) {
            abort(404);
        }

        $recentPost =  Post::withCount('comments')->latest('id')->take(6)->get();
        $categories = PostCategory::latest()->take(6)->get();
        $blog->load('author', 'category')->loadCount('comments');

        return view('frontend.blog-single', compact('blog', 'categories', 'recentPost'));
    }

    /**
     * View Privacy Policy page
     *
     * @return void
     */
    public function privacy()
    {
        return view('frontend.privacy')->with('Cms', Cms::select(['privacy_body', 'privacy_background', 'privacy_body_lt'])->first());
    }

    /**
     * View Terms & Condition page
     *
     * @return void
     */
    public function terms()
    {
        return view('frontend.terms')->with('Cms', Cms::select(['terms_body', 'terms_background', 'terms_body_lt'])->first());
    }

    /**
     *
     * @param int $post_id
     * @return array
     */
    public function commentsCount($post_id)
    {
        return BlogComment::where('post_id', $post_id)->count();
    }

    /**
     *
     * @param int $post_id
     * @return array
     */
    public function pricePlanDetails($id)
    {
        if (request('email')) {
            $user = User::where('email', request('email'))->firstOrFail();
            Auth::guard('user')->login($user);
        }

        if (!request('email') && !auth('user')->check()) {
            abort(404);
        }

        $plan = Coupon::find($id);
        session(['stripe_amount' => $plan->price * 100]);
        session(['razor_amount' => currencyConversion($plan->price, null, 'INR', 1) * 100]);
        session(['ssl_amount' => currencyConversion($plan->price, null, 'BDT', 1)]);
        session(['plan' => $plan]);

        if (config('zakirsoft.midtrans_active') && config('zakirsoft.midtrans_id') && config('zakirsoft.midtrans_key') && config('zakirsoft.midtrans_secret')) {
            $usd = $plan->price;
            $amount = (int) Currency::convert()
                ->from(config('zakirsoft.currency'))
                ->to('IDR')
                ->amount($usd)
                ->round(2)
                ->get();

            $order['order_no'] = uniqid();
            $order['total_price'] = $amount;

            $midtrans = new CreateSnapTokenService($order);
            $snapToken = $midtrans->getSnapToken();

            session(['midtrans_details' => [
                'order_no' => $order['order_no'],
                'total_price' => $order['total_price'],
                'snap_token' => $snapToken,
                'plan_id' => $plan->id,
            ]]);
        }

        return view('frontend.plan-details', [
            'plan' => $plan,
            'mid_token' => $snapToken ?? null,
        ]);
    }

    public function adGalleryDetails(Ad $ad)
    {
        $ad->load('galleries');
        return view('frontend.single-ad-gallery', compact('ad'));
    }

    public function attachmentDownload(Request $request)
    {
        $field = ProductCustomField::with('customField')->FindOrFail($request->field);
        $file = public_path() . $field->value;

        if (file_exists($file)) {

            return response()->download($file);
        }
        flashWarning('File not found .');
        return redirect()->back();
    }

    public function setSession(Request $request)
    {
        $request->session()->put('location', $request->input());
        return response()->json(true);
    }

    public function addToWishList(Request $request)
    {
        $ads = Ad::find($request->ad_id);
        $countProduct = Wishlist::where('user_id', Auth::id())->count();

        if (isset($ads) && $ads->user_id == Auth::id()) {
            $notification = trans('You can\'t add your owne ads to favorite list');

            return response()->json(['message' => $notification, 'count' => $countProduct], 200);
        }


        $oldwishlist = Wishlist::where('ad_id', $request->ad_id)->where('user_id', Auth::id())->first();
        if ($request->isChecked) {
            # code...
            $ad = Ad::findOrFail($request->ad_id);
            $user = auth('user')->user();
            $seller = User::findOrFail($ad->user_id);
            if (!isset($oldwishlist)) {
                $wishlist = new Wishlist();
                $wishlist->ad_id = $request->ad_id;
                $wishlist->user_id = Auth::id();
                $wishlist->save();
                if (checkSetup('mail')) {
                    $seller->notify(new AdWishlistNotification($user, 'add', $ad->slug));
                }
            }
        } else {
            if (isset($oldwishlist)) {
                $oldwishlist->delete();
            }
        }



        if ($request->isChecked) {
            return response()->json(['message' => 'Add to wishlist successfully', 'count' => $countProduct], 200);
        } else {
            return response()->json(['message' => 'Remove from wishlist successfully', 'count' => $countProduct], 200);
        }
    }


    public function myReview(Ad $ad)
    {
        $reviews = Review::with('ads')->where('seller_id', $ad->user_id)->get();
        return view('frontend.feedback.index', compact('reviews'));
    }


    public function contactForm(Request $request)
    {
        try {

            $request->validate([
                'name' => 'required',
                'email' => 'required',
                'listing_url' => 'required',
                'help' => 'required',
                'reason' => 'required',
                'image' => 'sometimes',
                'message' => 'required',
            ]);

            $contact = new Contact();
            $contact->name = $request->name;
            $contact->email = $request->email;
            $contact->listing_url = $request->listing_url;
            $contact->subject_id = $request->help;
            $contact->reason_id = $request->reason;
            if ($request->has('image')) {
                $contact->screenshot = uploadImage($request->image, "contantImage");
            }
            $contact->message = $request->message;
            $contact->save();
            return redirect()->back()->with('success', "Contact form submited");
        } catch (\Exception $e) {
            return redirect()->back()->with('error', $e->getMessage());
        }
    }

    public function requestReason(Request $request)
    {
        $contactHelp = HelpReason::where('contact_helps_id', $request->id)->get();
        return response($contactHelp, 200);
    }

    public function helpCenter()
    {
        // helpcenter
    }

    public function mailToCustomer(Request $request)
    {
        $request->validate([
            'subject' => 'required',
            'message' => 'required',
        ]);

        $details = [
            'customer' => $request->customer_name,
            'user' => Auth::user()->name,
            'title' => $request->subject,
            'body' => $request->message,
        ];

        Mail::to($request->customer_email)->send(new \App\Mail\MyTestMail($details));

        return redirect()->back()->with('success', 'Mail has been sent.');
    }

    public function reactiveAd(Ad $ad)
    {

        $user = User::find($ad->user_id);
        if ($user->coupons <= 0) {
            flashWarning('You don\'t have enough coupons to active this ads');
            return redirect()->back();
        }
        $setting = Setting::first();
        $validity = Carbon::now()->addDays($setting->ad_valid_day);
        $ad->update(['validity' => $validity, 'status' => 'active']);

        $user->coupons = $user->coupons - 1;
        $user->save();
        flashSuccess('Your ad is activated Successfully');
        return back();
    }

    public function dataDeletion()
    {
        $cms = Cms::first();
        return view('frontend.datadeletion', compact('cms'));
    }
}
