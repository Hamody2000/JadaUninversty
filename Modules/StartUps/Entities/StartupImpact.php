<?php

namespace Modules\StartUps\Entities;

use Modules\StartUps\Entities\Startup;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class StartupImpact extends Model
{
    use HasFactory;

    protected $table = 'startup_impact';

    protected $fillable = [
        'startup_id',
        'impact_image_id',
    ];

    public function startup()
    {
        return $this->belongsTo(Startup::class, 'startup_id', 'id');
    }

    public function image()
    {
        return $this->belongsTo('App\Models\Upload', 'impact_image_id');
    }
}
