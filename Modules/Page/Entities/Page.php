<?php

namespace Modules\Page\Entities;

use App\Traits\Relationship\StatusRelationTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Spatie\Translatable\HasTranslations;

class Page extends Model
{
    use HasFactory, StatusRelationTrait, HasTranslations;

    protected $fillable = [];
    public $translatable = ['title', 'content', 'mission', 'vision', 'values'];

    // booted
    protected static function booted()
    {
        static::created(function ($pages) { // when pages created then forget cache
            cache()->forget('Pages');
            cache()->forget('footer_menus');
        });

        static::updated(function ($pages) { // when pages updated then forget cache
            cache()->forget('Pages');
            cache()->forget('footer_menus');
        });

        static::deleted(function ($pages) { // when pages deleted then forget cache
            cache()->forget('Pages');
            cache()->forget('footer_menus');
        });
    }

    // image relation with upload
    public function image(): BelongsTo
    {
        return $this->belongsTo('App\Models\Upload', 'image_id');
    }

    // active
    public function scopeActive($query)
    {
        return $query->where('status_id', 1);
    }

    protected $casts = [
        'section' => 'array',
    ];
}
