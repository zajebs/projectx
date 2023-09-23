<?php

use App\Console\Commands\UpdateAdStatus;
use App\Http\Controllers\Admin\PaymentController;
use App\Http\Controllers\Admin\SizeController;
use App\Http\Controllers\Auth\SocialLoginController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FilterController;
use App\Http\Controllers\MessangerController;
use App\Http\Controllers\Frontend\AdPostController;
use App\Http\Controllers\Auth\VerificationController;
use App\Http\Controllers\Frontend\DashboardController;
use App\Http\Controllers\Frontend\SellerDashboardController;
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\Frontend\OrderController;
use App\Http\Controllers\Frontend\PurchaseController;
use App\Http\Controllers\RequestedProductController;
use App\Http\Controllers\WithdrawRequestController;
use App\Models\RequestedProduct;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;

// show website pages
Route::group(['as' => 'frontend.'], function () {
    // Route::get('/', [FrontendController::class, 'index'])->name('index');
    Route::controller(FrontendController::class)->group(function () {
        Route::get('/', 'index')->name('index');
        Route::get('about', 'about')->name('about');
        Route::get('faq', 'faq')->name('faq');
        Route::get('privacy', 'privacy')->name('privacy');
        Route::get('terms-conditions', 'terms')->name('terms');
        Route::get('get-membership', 'getMembership')->name('getmembership');
        Route::get('price-plan', 'pricePlan')->name('priceplan');
        Route::get('price-plan-details/{id}', 'pricePlanDetails')->name('priceplanDetails');
        Route::get('contact', 'contact')->name('contact');
        Route::get('/ad/details/{ad:slug}', 'adDetails')->name('addetails');
        Route::get('/ad/reactive/{ad:slug}', 'reactiveAd')->name('reactiveAd');
        Route::get('/ad/gallery-details/{ad:slug}', 'adGalleryDetails')->name('ad.gallery.details');
        Route::get('blog', 'blog')->name('blog');
        Route::get('blog/{blog:slug}', 'singleBlog')->name('single.blog');
        Route::post('send/mail-to-customer', 'mailToCustomer')->name('mail.to.customer');
        Route::get('blog/comments/count/{post_id}', 'commentsCount');
        Route::post('ad/attachment/download/', 'attachmentDownload')->name('attachment.download');
        Route::post('/set/session', 'setSession')->name('set.session');
        Route::get('/help-center', 'helpCenter')->name('helpCenter');
        Route::get('/data-deletion', 'dataDeletion')->name('data.deletion');
    });
    //seller dashboard
    Route::controller(SellerDashboardController::class)->group(function () {
        Route::get('/seller/{user:username}/{cat?}/{subcat?}', 'profile')->name('seller.profile');
        Route::get('/sellers/{user:id}/{status}', 'sellerFollow')->name('seller.sellerFollow')->middleware('auth');

        Route::post('/seller/rate', 'rateReview')->name('seller.review');
        Route::post('/pre/signup', 'preSignup')->name('pre.signup');
        Route::post('/report', 'report')->name('seller.report');
    });
    // category filter
    Route::get('ads/{category?}/{subcat?}', [FilterController::class, 'search'])->name('adlist.search');
    Route::get('ad-list', [FilterController::class, 'search'])->name('adlist');
    // customer dashboard
    Route::prefix('dashboard')->middleware(['auth:user', 'verified'])->group(function () {
        Route::get('/', [DashboardController::class, 'dashboard'])->name('dashboard');
        Route::controller(AdPostController::class)->prefix('post')->group(function () {
            // Ad Create
            Route::get('/', 'postStep1')->name('post');
            Route::post('/', 'storePostStep1')->name('post.store');
            Route::get('/step2', 'postStep2')->name('post.step2');
            Route::post('/step2', 'storePostStep2')->name('post.step2.store');
            Route::get('/step3', 'postStep3')->name('post.step3');
            Route::post('/step3', 'storePostStep3')->name('post.step3.store');
            Route::get('/step2/back/{slug?}', 'postStep2Back')->name('post.step2.back');
            Route::get('/step1/back/{slug?}', 'postStep1Back')->name('post.step1.back');
            // Ad Edit
            Route::post('/gallery/images/{ad_gallery}', 'adGalleryDelete')->name('ad.gallery.delete');
            Route::get('/{ad:slug}', 'editPostStep1')->name('post.edit');
            Route::put('/{ad:slug}/update', 'UpdatePostStep1')->name('post.update');
            Route::get('/{ad:slug}/step2', 'editPostStep2')->name('post.edit.step2');
            Route::put('/step2/{ad:slug}/update', 'updatePostStep2')->name('post.step2.update');
            Route::get('/{ad:slug}/step3', 'editPostStep3')->name('post.edit.step3');
            Route::put('/step3/{ad:slug}/update', 'updatePostStep3')->name('post.step3.update');
            Route::get('/cancel/edit', 'cancelAdPostEdit')->name('post.cancel.edit');
        });
        // add shippting
        Route::get('AddShippingFromAddress', [AdPostController::class, 'AddShippingFromAddress'])->name('post.shipping.add');
        Route::get('getShipFromAddress', [AdPostController::class, 'getShipFromAddress'])->name('getShipFromAddress');
        // Messenger
        Route::controller(MessangerController::class)->group(function () {
            Route::get('message/{username?}', 'index')->name('message');
            Route::post('message/{username}', 'sendMessage')->name('message.store');
            Route::post('message/markas/read/{username}', 'messageMarkasRead')->name('message.markas.read');
        });
        Route::controller(DashboardController::class)->group(function () {
            Route::get('post-rules', 'postRules')->name('post.rules');
            Route::get('ad/{ad:slug}', 'editAd')->name('editad');
            Route::get('ads', 'myAds')->name('adds');
            Route::get('coupons', 'myCoupons')->name('coupons');
            Route::delete('delete-ads/{ad}', 'deleteMyAd')->name('delete.myad');
            Route::put('status-ads/{ad}', 'myAdStatus')->name('myad.status');
            Route::put('expire-ads/{ad}', 'markExpired')->name('myad.expire');
            Route::put('active-ad/{ad}', 'markActive')->name('myad.active');
            Route::get('favourites', 'favourites')->name('favourites');
            Route::get('plans-billing', 'plansBilling')->name('plans-billing');
            Route::get('cancel/plan', 'cancelPlan')->name('cancel-plan');
            Route::get('account-setting', 'accountSetting')->name('account-setting');
            Route::post('username-valid', 'usernameValid')->name('username.valid');
            Route::put('profile', 'profileUpdate')->name('profile');
            Route::put('password', 'passwordUpdate')->name('password');
            Route::put('social', 'socialUpdate')->name('social.update');
            Route::post('wishlist', 'addToWishlist')->name('add.wishlist');
            Route::delete('account-delete/{customer}', 'deleteAccount')->name('account.delete');
            Route::get('myaddresses', 'myAddresses')->name('my-addresses');
            Route::get('mysizes', 'mySizes')->name('my-sizes');
            Route::get('settings', 'mysettings')->name('settings');
        });
        // order
        Route::name('orders.')->prefix('orders')->group(function () {
            Route::get('/orders', [OrderController::class, 'index'])->name('index');
            Route::get('/view/{order}', [OrderController::class, 'view'])->name('view');
            Route::put('/update/{order}', [OrderController::class, 'update'])->name('update');
        });
        // purches
        Route::name('purchase.')->prefix('purchase')->group(function () {
            Route::get('/', [PurchaseController::class, 'index'])->name('index');
            Route::get('/view/{order}', [PurchaseController::class, 'view'])->name('view');
            Route::put('/update/{order}', [PurchaseController::class, 'update'])->name('update');
        });
        // fontend
        Route::post('/add-to-wish-list', [FrontendController::class, 'addToWishList'])->name('addToWishList');
        Route::get('my-transaction', [PaymentController::class, 'myTransaction'])->name('myTransaction');
        Route::get('my-transaction-view/{transaction}', [PaymentController::class, 'myTransactionView'])->name('my-transaction-view');
        Route::post('/my-review/{ad}', [FrontendController::class, 'myReview'])->name('myRevirw');
        Route::get('/withdraw-request', [WithdrawRequestController::class, 'index'])->name('withdrawRequest');
        Route::get('/withdraw-request-view/{withdrawRequest}', [WithdrawRequestController::class, 'show'])->name('withdrawRequestView');
        Route::get('/withdraw-request-make', [WithdrawRequestController::class, 'create'])->name('withdrawRequestCreate');
        Route::post('/withdraw-request-make', [WithdrawRequestController::class, 'store'])->name('withdrawRequestStore');
        Route::post('/send-offer-for-sold-product', [RequestedProductController::class, 'store'])->name('sendOfferPriceForSoldProduct');
        Route::get('/my-requested-product', [RequestedProductController::class, 'index'])->name('myRequestedProduct');
        Route::put('/my-requested-product/active/{requestedProduct}', [RequestedProductController::class, 'update'])->name('myRequestedProductUpdate');
    });
    // contact
    Route::post('/contact-form', [FrontendController::class, 'contactForm'])->name('contactForm');
    Route::post('/request-reason', [FrontendController::class, 'requestReason'])->name('requestReason');
    Route::post('/get-size-byCategory', [SizeController::class, 'getSizeByCategories'])->name('getSizeByCategories');
});
// Verification Routes
Route::controller(VerificationController::class)->middleware('auth:user')->group(function () {
    Route::get('/email/verify', 'show')->name('verification.notice');
    Route::get('/email/verify/{id}/{hash}', 'verify')->name('verification.verify')->middleware(['signed']);
    Route::post('/email/resend', 'resend')->name('verification.resend');
});
// Social Authentication
Route::controller(SocialLoginController::class)->group(function () {
    Route::get('/auth/{provider}/redirect', 'redirect')->where('provider', 'google|facebook|twitter|linkedin|github|gitlab|bitbucket')->name('social-login');
    Route::get('/auth/{provider}/callback', 'callback')->where('provider', 'google|facebook|twitter|linkedin|github|gitlab|bitbucket');
});
// transection
Route::get('transection-clean', function () {
    DB::table('transactions')->truncate();
    return "success";
});
// order clean
Route::get('order-clean', function () {
    DB::table('item_purchases')->truncate();
    return "success";
});
// cache celar
Route::get('cache-clear', function () {
    Artisan::call('optimize:clear');
    return "success";
});
// login
Route::get('/login', function () {
    return redirect()->route('frontend.index');
})->name('users.login');
// get child
Route::post('get_child_category/', [AdPostController::class, 'getChildcategory'])->name('getChildcategory');

Route::get('/update-ad-status', function () {
    // Call the handle method of the command to update the ad statuses.
    $command = new UpdateAdStatus();
    $command->handle();

    return 'Ad statuses updated successfully.';
});
