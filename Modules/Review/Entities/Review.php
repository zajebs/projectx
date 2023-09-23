<?php

namespace Modules\Review\Entities;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Modules\Ad\Entities\Ad;

/**
 * @property mixed $seller_id
 */
class Review extends Model
{
    use HasFactory;

    protected $fillable = [
        'seller_id',
        'stars',
        'comment',
        'status',
        'user_id'
    ];

    protected static function newFactory(): \Modules\Review\Database\factories\ReviewFactory
    {
        return \Modules\Review\Database\factories\ReviewFactory::new();
    }

    /**
     * Get the user for the review.
     *
     * @return BelongsTo
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    /**
     * Get the ad for the review.
     *
     * @return BelongsTo
     */
    public function ads(): BelongsTo
    {
        return $this->belongsTo(Ad::class,'ad_id');
    }





}
