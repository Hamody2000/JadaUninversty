<?php

namespace Modules\StartUps\Entities;

use Modules\StartUps\Entities\Startup;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class StartupHowItWorks extends Model
{
    use HasFactory, HasTranslations;

    protected $table = 'startup_how_it_works';

    protected $fillable = [
        'startup_id',
        'title',
        'description',
        'how_it_works_image_id',
    ];

    public $translatable = ['title', 'description'];

    public function startup()
    {
        return $this->belongsTo(Startup::class, 'startup_id', 'id');
    }

    public function image()
    {
        return $this->belongsTo('App\Models\Upload', 'how_it_works_image_id');
    }
}
