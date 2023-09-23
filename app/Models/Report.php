<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * @property \Illuminate\Support\HigherOrderCollectionProxy|int|mixed $ad_id
 * @property mixed $email
 * @property mixed $message
 */
class Report extends Model
{
    use HasFactory;

    protected $fillable = [
        'report_from_id',
        'report_to_id',
        'reason',
        'commends',
    ];

    public function reportFrom():BelongsTo
    {
        return $this->belongsTo(User::class, 'report_from_id');
    }

    public function reportTo():BelongsTo
    {
        return $this->belongsTo(User::class, 'report_to_id');
    }
}
