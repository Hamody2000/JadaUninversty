<?php

namespace Modules\StartUps\Entities;

use Modules\StartUps\Entities\Startup;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class StartupTeam extends Model
{
    use HasFactory, HasTranslations;

    protected $table = 'startup_team';

    protected $fillable = [
        'startup_id',
        'name',
        'role',
        'description',
        'team_image_id',
    ];

    public $translatable = ['name', 'role', 'description'];

    public function startup()
    {
        return $this->belongsTo(Startup::class, 'startup_id', 'id');
    }


    public function image()
    {
        return $this->belongsTo('App\Models\Upload', 'team_image_id');
    }
}
