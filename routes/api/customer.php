<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AdController;
use App\Http\Controllers\Api\AppController;
use App\Http\Controllers\Api\HomeController;
use App\Http\Controllers\Api\PaymentController;
use App\Http\Controllers\Api\SettingController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\CustomerController;
use App\Http\Controllers\Api\MessengerController;

Route::middleware('auth:api')->get('/user', function () {
    return auth()->guard('api')->user();
});
// auth api
Route::middleware(['auth:api'])->group(function () {
    // Customer Controller
    Route::controller(CustomerController::class)->group(function () {

        Route::post('/auth/password', 'passwordUpdate');
        Route::post('/auth/profile', 'profileUpdate');
        Route::get('/customer/ads', 'allAds');
        Route::get('/customer/recent-ads', 'recentAds');
        Route::put('/customer/ads/{ad}/active', 'activeAd');
        Route::put('/customer/ads/{ad}/expire', 'expireAd');
        Route::put('/customer/ads/{ad}/re-active', 'reActiveAd');
        Route::delete('/customer/ads/{ad}/delete', 'deleteAd');
        Route::delete('/customer/account-delete', 'deleteCustomer');
        Route::get('/customer/dashboard', 'dashboardOverview');
        Route::get('/customer/dashboard-adsviews', 'adsViewsSummery');
        Route::post('/ads/{ad}/favourite', 'favouriteAddRemove');
        Route::get('/customer/favourite-list', 'favouriteAds');
        Route::get('/customer/transactions', 'transactions');
        Route::get('/customer/activity-logs', 'activityLogs');
        Route::post('/customer/ads/{id}/adblock', 'adBlock');

    });
    // Messenger Controller
    Route::get('chats/user-list', [MessengerController::class, 'index']);
    Route::get('chats/{username}', [MessengerController::class, 'show']);
    Route::post('chats/send/{username}', [MessengerController::class, 'sendMessage']);
    Route::post('payment-success', [PaymentController::class, 'paymentSuccess']);
    Route::post('seller/review', [CustomerController::class, 'rateReview']);

});
// Category Controller
Route::controller(CategoryController::class)->group(function () {
    Route::get('/categories', 'categories');
    Route::get('/categories/{category}/subcategories', 'categoriesSubcategories');
});
// Ad Controller
Route::controller(AdController::class)->group(function () {
    Route::get('/ads/{category}/category', 'categoryWiseAds');
    Route::get('/ads/{ad:slug}', 'adDetails');
    Route::get('/ads', 'adsCollection');
    Route::middleware(['auth:api'])->group(function () {
        Route::post('ads/post-ad', 'storeAd');
        Route::get('/ads/{ad}/edit', 'editAd');
        Route::post('/ads/{ad}/update', 'updateAd');
        Route::delete('/ads/gallery/{ad_gallery}', 'deleteAdGallery');
        Route::delete('/ads/{ad}/delete', 'deleteAd');
    });
    Route::post('/report/ads', 'reportAds');

});
// App Controller
Route::controller(AppController::class)->group(function () {
    Route::get('/testimonials', 'testimonialList');
    Route::get('/contacts-help', 'contactHelp');
    Route::get('/contacts-help-reson', 'requestReason');
    Route::post('/contacts', 'contactMessage');
    Route::get('/faqs-categories', 'faqsCategory');
    Route::get('/faqs-categories/{category}/faq', 'categoriesFaq');
    Route::get('/cities', 'cities');
    Route::get('/contact-content', 'contactContent');
    Route::get('/postingrules-content', 'postingrulesContent');
    Route::get('/about-content', 'aboutContent');
    Route::get('/brands', 'brands');
    Route::get('/pricing-plans', 'planList');
    Route::post('/fcm-token', 'generateToken');
});

Route::prefix('language')->group(function () {
    Route::get('/sync', [HomeController::class, 'lenguageSync']);
    Route::get('/{code}', [HomeController::class, 'getLenguage']);
});
Route::get('seller/list', [HomeController::class, 'seller'])->name('sellers');
Route::get('/seller/{user:username}', [HomeController::class,  'profile'])->name('seller.profile');
Route::post('follow/{user:username}/{status}', [HomeController::class, 'sellerFollow']);


// App setting
Route::get('/settings', [SettingController::class, 'appSetting']);
Route::get('/colors', [HomeController::class, 'color']);
Route::get('/brands', [HomeController::class, 'brand']);
Route::get('/sizes/{subcategory}', [HomeController::class, 'size']);
Route::get('/', [HomeController::class, 'index']);
