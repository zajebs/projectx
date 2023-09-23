<?php

namespace App\Models;

use App\Models\Admin\ShipingLocations;
use App\Models\Setting;
use App\Models\UserPlan;
use App\Models\Transaction;
use Modules\Ad\Entities\Ad;
use Illuminate\Auth\MustVerifyEmail;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Collection;
use Log;
use Modules\PushNotification\Entities\UserDeviceToken;
use Modules\Review\Entities\Review;

/**
 * @property \Illuminate\Support\HigherOrderCollectionProxy|int|mixed $coupons
 */
class User extends Authenticatable implements JWTSubject
{
    use HasFactory, Notifiable, MustVerifyEmail;

    protected $guarded = [];

    protected $appends = ['image_url', 'total_review', 'avg_rating', 'total_ads', 'is_follow'];
    protected $guard = 'user';

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * Get the identifier that will be stored in the subject claim of the JWT.
     *
     * @return mixed
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }

    /**
     * The "booted" method of the model.
     *
     * @return void
     */
    protected static function booted()
    {
        static::created(function ($customer) {
            $setting = Setting::first();
            $customer->userPlan()->create([
                'ad_limit'  =>  $setting->free_ad_limit,
                'featured_limit'  =>  $setting->free_featured_ad_limit,
                'subscription_type' => $setting->subscription_type,
            ]);
        });
    }

    public function getImageUrlAttribute()
    {
        if (is_null($this->image)) {
            return asset('backend/image/default-user.png');
        }

        return asset($this->image);
    }


    public function getTotalReviewAttribute()
    {
        $reviews = Review::where('seller_id', $this->id)->whereStatus(1)->get();
        return $reviews->count() ?? 0;
    }

    public function getAvgRatingAttribute()
    {

        $reviews = Review::where('seller_id', $this->id)->whereStatus(1)->get();
        return $reviews->avg('stars') ?? 0;
    }

    public function getToTalAdsAttribute()
    {

        return $this->ads()->count() ?? 0;
    }

    public function getIsFollowAttribute()
    {
        if (auth()->check()) {
            return UserFollower::where('follower_id', auth()->user()->id)->where('seller_id', $this->id)->exists();
        } elseif (auth()->guard('api')->check()) {
            return UserFollower::where('follower_id', auth()->guard('api')->user()->id)->where('seller_id', $this->id)->exists();
        } else {
            return false;
        }
    }

    /**
     *  HasMany
     * @return HasMany|Collection|Customer
     */
    public function ads(): HasMany
    {
        return $this->hasMany(Ad::class);
    }

    /**
     * User Pricing Plan
     *
     * @return HasOne
     *
     */
    public function userPlan(): HasOne
    {
        return $this->hasOne(UserPlan::class);
    }

    /**
     * User Transactions
     *
     * @return HasMany
     */
    public function transactions(): HasMany
    {
        return $this->hasMany(Transaction::class, 'user_id', 'id');
    }

    /**
     * User Transactions
     *
     * @return HasMany
     */
    public function completeTransactions(): HasMany
    {
        return $this->hasMany(ItemPurchase::class, 'created_by', 'id')->where('item_purchases.status', '=', 5);
    }



    public function socialMedia()
    {
        return $this->hasMany(SocialMedia::class, 'user_id');
    }

    public function deviceToken()
    {
        return $this->hasMany(UserDeviceToken::class, 'user_id', 'id');
    }

    public function country(): BelongsTo
    {
        return $this->belongsTo(ShipingLocations::class, 'location', 'id');
    }


    public function reviews(): HasMany
    {
        return $this->hasMany(Review::class,  'seller_id', 'id');
    }
    public function follows(): HasManyThrough
    {

        return $this->hasManyThrough(
            User::class,
            UserFollower::class,
            'seller_id',
            'follower_id'
        );
    }
}
