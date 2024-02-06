<?php

namespace Modules\StartUps\Entities;

use Modules\StartUps\Entities\Startup;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class StartupProblem extends Model
{
    use HasFactory, HasTranslations;

    protected $table = 'startup_problem';

    protected $fillable = [
        'startup_id',
        'title',
        'description',
        'problem_image_id',
    ];

    public $translatable = ['title', 'description'];

    public function startup()
    {
        return $this->belongsTo(Startup::class, 'startup_id', 'id');
    }

    public function image()
    {
        return $this->belongsTo('App\Models\Upload', 'problem_image_id');
    }
}
