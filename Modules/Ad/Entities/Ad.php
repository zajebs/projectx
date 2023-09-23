<?php

namespace Modules\Ad\Entities;

use App\Models\Admin\ShipingLocations;
use App\Models\AdsSize;
use App\Models\Color;
use App\Models\ItemPurchase;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Modules\Ad\Database\factories\AdFactory;
use Modules\Brand\Entities\Brand;
use Modules\Category\Entities\Category;
use Modules\Category\Entities\SubCategory;
use Modules\ChildCategory\Entities\ChildCategory;
use Modules\CustomField\Entities\ProductCustomField;
use Modules\Review\Entities\Review;
use Modules\Wishlist\Entities\Wishlist;

class Ad extends Model
{
    use HasFactory;

    protected $guarded = [];
    // protected $appends = ['image_url'];
    protected $appends = ['image_url', 'is_wish_list'];
    protected $casts = ['show_phone' => 'boolean'];
    protected $fillable = [
        'title',
        'slug',
        'user_id',
        'category_id',
        'subcategory_id',
        'child_category_id',
        'size_id',
        'color',
        'condition',
        'brand_id',
        'price',
        'is_accept_offer',
        'is_smart_price',
        'smart_price',
        'min_price',
        'description',
        'phone',
        'show_phone',
        'phone_2',
        'thumbnail',
        'status',
        'validity',
        'featured',
        'popular',
        'trending',
        'total_reports',
        'total_views',
        'is_blocked',
        'drafted_at',
        'created_at',
        'updated_at',
        'address',
        'apartment',
        'state',
        'city',
        'postcode',
        'country',
        'long',
        'lat',
        'whatsapp',
        'tags',
        'measure_scale',
        'measurements',
        'shipping_region',
    ];

    protected static function newFactory(): AdFactory
    {
        return AdFactory::new();
    }

    public function getImageUrlAttribute(): string
    {
        if (is_null($this->thumbnail)) {
            return asset('backend/image/default-ad.png');
        }

        return asset($this->thumbnail);
    }

    public function getMeasurementsAttribute($value)
    {
        if (request()->is('api/*')) {
            return json_decode($value, true);
        } else {
            return $value;
        }
    }

    public function getShippingRegionAttribute($value)
    {
        return json_decode($value, true);
    }

    /**
     *  Customer scope
     * @return mixed
     */
    public function scopeCustomerData($query, $api = false)
    {
        if ($api) {
            return $query->where('user_id', auth('api')->id());
        } else {
            return $query->where('user_id', auth('user')->id());
        }
    }

    /**
     *  Active ad scope
     * @return mixed
     */
    public function scopeActive($query)
    {
        return $query->where('status', '!=', 'pending');
    }

    public function scopeValidate($query)
    {
        return $query->where('validity', '>', now());
    }

    /**
     *  Active Category scope
     * @return mixed
     */
    public function scopeActiveCategory($query)
    {
        return $query->whereHas('category', function ($q) {
            $q->where('status', 1);
        });
    }

    /**
     *  Active Category scope
     * @return mixed
     */
    public function scopeActiveSubcategory($query)
    {
        return $query->whereHas('subcategory', function ($q) {
            $q->where('status', 1);
        });
    }

    /**
     *  Inactive Category scope
     * @return mixed
     */
    public function scopeInactiveCategory($query)
    {
        return $query->whereHas('category', function ($q) {
            $q->where('status', 0);
        });
    }


    /**
     *  BelongTo
     * @return BelongsTo|Collection|Category[]
     */
    function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }

    /**
     *  BelongTo
     * @return BelongsTo|Collection|Category[]
     */
    function subcategory(): BelongsTo
    {
        return $this->belongsTo(SubCategory::class);
    }

    /**
     *  BelongTo
     * @return BelongsTo|Collection|Category[]
     */
    function childcategory(): BelongsTo
    {
        return $this->belongsTo(ChildCategory::class, 'child_category_id', 'id');
    }

    /**
     *  BelongTo
     * @return BelongsTo|Collection|Customer[]
     */
    function customer(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    /**
     *  Has Many
     * @return HasMany|Collection|AdGallery[]
     */
    function galleries(): HasMany
    {
        return $this->hasMany(AdGallery::class, 'ad_id');
    }


    /**
     *  BelongTo
     * @return BelongsTo|Collection|Customer[]
     */
    function brand(): BelongsTo
    {
        return $this->belongsTo(Brand::class, 'brand_id');
    }

    public function adFeatures()
    {
        return $this->hasMany(AdFeature::class, 'ad_id');
    }

    public function productCustomFields()
    {
        return $this->hasMany(ProductCustomField::class, 'ad_id')->oldest('order')->with('customField.values', 'customField.customFieldGroup');
    }

    public function adSize(): HasOne
    {
        return $this->hasOne(AdsSize::class, 'id', 'size_id',);
    }

    public function adColor(): HasOne
    {
        return $this->hasOne(Color::class, 'id', 'color',);
    }

    public function adCountry(): HasOne
    {
        return $this->hasOne(ShipingLocations::class, 'id', 'country');
    }

    public function orders(): HasMany
    {
        return $this->hasMany(ItemPurchase::class, 'ad_id', 'id');
    }

    public function review(): HasMany
    {
        return $this->hasMany(Review::class, 'id', 'item_id');
    }

    public function getIsWishListAttribute()
    {

        if (auth()->guard('api')->check()) {
            return $this->wishlists()->where('user_id', auth('api')->id())->exists();
        } else {
            return $this->wishlists()->where('user_id', auth('user')->id())->exists();
        }
    }

    public function wishlists()
    {
        return $this->hasMany(Wishlist::class, 'ad_id');
    }
}
