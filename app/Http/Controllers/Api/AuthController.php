<?php

namespace App\Http\Controllers\Api;

use Exception;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Api\Response;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;

class AuthController extends Response
{
    public $authApiGuard;
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register','socialLogin']]);

        $this->authApiGuard = auth('api');
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'password' => 'required|string',
            'email' => 'required|string',
        ]);

        if ($validate->fails()) {
            return $this->sendError('Validation Error', $validate->errors()->first());
        }

        try {
            $login_type = filter_var($request->email, FILTER_VALIDATE_EMAIL) ? 'email' : 'username';

            $credentials = ['email' =>  $request->email, 'password' => $request->password];



            if (!$token = $this->authApiGuard->attempt($credentials)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid Credentials',
                ], 200);
            }

            $token = JWTAuth::fromUser(auth()->guard('api')->user());
            $data = $this->createNewToken($token);


            return parent::sendResponse(200, "Login Successfull", $data);
        } catch (JWTException $e) {
            return parent::sendError('Exception Error', "An error occured, please contact support.");
        }
    }

    /**
     * Register a User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required|string|between:2,100',
            'email' => "required|string|max:100|email|unique:users,email",
            'password_confirmation' => 'required|min:8|max:50',
            'password' => "required|confirmed|min:8|max:50",
            'username' => "required|unique:users,username",

        ]);

        if ($validate->fails()) {
            return $this->sendError('Validation Error', $validate->errors()->first());
        }

        try {

            $usernameExists = User::where('username', Str::slug($request->name))->count();

            if ($usernameExists) {
                $username = Str::slug($request->username) . '_' . Str::random(5);
            } else {
                $username = Str::slug($request->username);
            }

            // Create user
            $user = User::create([
                'name' => $request->name,
                'username' => $username,
                'email' => $request->email,
                'password' => bcrypt($request->password)
            ]);

            $token = JWTAuth::fromUser($user);

            $data['message'] = 'User registered';
            $data['user'] = $user;
            $data['access_token'] = $token;

            return parent::sendResponse(200, "User Registerd Successfully", $data);
        } catch (Exception $th) {
            return parent::sendError("Exception Error", "Something wrong");
        }
    }


    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        $this->authApiGuard->logout();

        return response()->json(['message' => 'User logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return parent::sendResponse(200, 'resfresh', $this->createNewToken($this->authApiGuard->refresh()));
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function authUser()
    {
        $userData = $this->authApiGuard->user();
        $token = JWTAuth::fromUser($userData);

        $data = [
            'access_token' => $token,
            'user' => $userData,
            'token_type' => 'bearer',
            'expires_in' => $this->authApiGuard->factory()->getTTL() * 60 * 24 * 30
        ];



        return parent::sendResponse(200, "User Data", $data);
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token)
    {
        $user_data = $this->authApiGuard->user();

        $data = [
            'access_token' => $token,
            'user' => $user_data,
            'token_type' => 'bearer',
            'expires_in' => $this->authApiGuard->factory()->getTTL() * 60 * 24 * 30
        ];

        return $data;
    }


    public function socialLogin(Request $request)
    {
        $userName = "";
        if ($request->email) {
            $trimedUserName = explode('@', $request->email);
            $userName = array_shift($trimedUserName);
            $result = User::where('username', $userName)->first();
            if (isset($result)) {
                $userName = Str::slug($userName . random_int(999, 9999));
            }
        } else {
            $userName = $request->id;
        }
        $provider = $request->input('provider');
        $token = $request->input('access_token');
        // get the provider's user. (In the provider server)
        // $providerUser = Socialite::driver($provider)->userFromToken($token);
        // check if access token exists etc..
        // $user = User::where('provider', $provider)->where('provider_id', $providerUser->id)->first();
        $user = User::where('email', $request->email)->first();
        // if there is no record with these data, create a new user
        if ($user == null) {
            $user = User::create([
                'name' => $request->name ?? $userName,
                'username' => $userName,
                'email' => $request->email,
                'password' => bcrypt($userName),
                // 'email_verified_at' => now(),
                'provider' => $provider,
                'provider_id' => $request->id,
            ]);
        }
        // create a token for the user, so they can login
        Auth::guard('api')->login($user);
        $token = JWTAuth::fromUser(auth()->guard('api')->user());
        $data = $this->createNewToken($token);

        // $token = JWTAuth::fromUser($user);
        // $data = [
        //     'access_token' => $token,
        //     'user' => Auth::guard('api')->user(),
        //     'token_type' => 'bearer',
        //     // 'expires_in' => $this->authApiGuard->factory()->getTTL() * 60 * 24 * 30
        //     'expires_in' => auth()->guard('api')->factory()->getTTL() * 60,
        //     // 'plan' => new CustomerPlanResource(auth()->guard('api')->user()->userPlan)
        // ];
        Log::alert($data);
        $message = "User Found";
        return parent::sendResponse(200, "User Data", $data);
        // return sendResponse(200, $message, $data);
    }




}
