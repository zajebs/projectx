<?php

namespace App\Http\Controllers\Api;

use App\Models\Setting;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use App\Models\PaymentSetting;

class SettingController extends Controller
{
    public function appSetting()
    {
//        $setting = Setting::first();
        $setting['app_name'] = env('APP_NAME');
        $setting['app_url'] = env('APP_URL');
        $setting['paypal_active'] = env('PAYPAL_ACTIVE');
        $setting['paypal_mode'] = env('PAYPAL_MODE');
        $setting['paypal_sandbox_client_id'] = env('PAYPAL_SANDBOX_CLIENT_ID');
        $setting['paypal_sandbox_secret'] = env('PAYPAL_SANDBOX_CLIENT_SECRET');
        $setting['paypal_live_client_id'] = env('PAYPAL_LIVE_CLIENT_ID');
        $setting['paypal_live_secret'] = env('PAYPAL_LIVE_CLIENT_SECRET');
        $setting['stripe_active'] = env('STRIPE_ACTIVE');
        $setting['stripe_key'] = env('STRIPE_KEY');
        $setting['stripe_secret'] = env('STRIPE_SECRET');
        $setting['apple_pay_active'] = env('APPLE_PAY_ACTIVE');
        $setting['apple_pay_key'] = env('APPLE_PAY_KEY');
        $setting['apple_pay_secret'] = env('APPLE_PAY_SECRET');

        return response()->json([
            'success' => true,
            'data' => $setting,
        ], Response::HTTP_OK);
    }
}
