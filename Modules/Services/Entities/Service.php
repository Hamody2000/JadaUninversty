<?php

namespace Modules\Services\Entities;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Service extends Model
{
    use HasFactory, HasTranslations;

    protected $fillable = [
        'title',
        'description',
        'image'
    ];

    public $translatable = ['title', 'description'];

    public function image()
    {
        return $this->belongsTo('App\Models\Upload', 'image_id');
    }

    public function scopeTitle($query, $title)
    {
        return $query->where('title', 'like', '%' . $title . '%');
    }
}
