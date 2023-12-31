<?php

namespace Modules\Ad\Entities;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Modules\Ad\Database\factories\AdGalleryFactory;

class AdGallery extends Model
{
    use HasFactory;

    protected $guarded = [];
    protected $appends = ['image_url'];
    protected $fillable = [
        'ad_id',
        'image',
    ];

    protected static function newFactory()
    {
        return AdGalleryFactory::new();
    }

    public function getImageUrlAttribute()
    {
        if (is_null($this->image)) {
            return asset('backend/image/default-ad.png');
        }

        return asset($this->image);
    }

    /**
     *  Belongs To
     * @return BelongsTo|Collection|Feature[]
     */
    function ad(): BelongsTo
    {
        return $this->belongsTo(Ad::class);
    }
}
