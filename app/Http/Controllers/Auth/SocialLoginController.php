<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\SocialSetting;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Validator;

class SocialLoginController extends Controller
{
    public function redirect($provider)
    {
        return Socialite::driver($provider)->redirect();
    }

    public function callback($provider)
    {
        try {
            $socialiteUser = Socialite::driver($provider)->user();
        } catch (\Exception $e) {
            // dd($e);
            return redirect()->route('users.login')->with('error', 'User not found');
        }
            $socialiteUserId = $socialiteUser->getId();
            $socialiteUserName = $socialiteUser->getName();
            $socialiteUseremail = $socialiteUser->getEmail();
            if (isset($socialiteUseremail)) {
                $user = User::where([
                    'provider' => $provider,
                    'provider_id' =>  $socialiteUserId,
                ])->orWhere('email', $socialiteUseremail)->first();
            } else {
                $user = User::where('provider', $provider)
                    ->where('provider_id', $socialiteUserId)->first();
            }



            if (!$user) {

                if ($socialiteUseremail) {
                    $validator = Validator::make(
                        ['email' => $socialiteUseremail],
                        ['email' => ['unique:users,email']],
                        ['email.unique' => 'Couldn\'t login. Maybe you used a different login method?'],
                    );

                    if ($validator->fails()) {
                        return redirect()->route('users.login')->withErrors($validator);
                    }
                }
                $user = User::create([
                    'name' => $socialiteUserName,
                    'email' => $socialiteUseremail,
                    'username' => strtolower(str_replace(' ', '', $socialiteUserName)) . str_pad(mt_rand(1, 999999), 6, '0', STR_PAD_LEFT),
                    'provider' => $provider,
                    'provider_id' =>  $socialiteUserId,
                    'email_verified_at' => Carbon::now(),
                ]);
            }

            Auth::guard('user')->login($user);

            if (Auth::user()->coupons > 0) {
                return redirect()->route('frontend.dashboard');
            } else {
                return redirect()->route('frontend.coupons');
            }
    }
}
