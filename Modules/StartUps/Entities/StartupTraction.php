<?php

namespace Modules\StartUps\Entities;

use Modules\StartUps\Entities\Startup;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class StartupTraction extends Model
{
    use HasFactory;

    protected $table = 'startup_traction';

    protected $fillable = [
        'startup_id',
        'trees_saved',
        'current_customers',
        'boards_produced',
        'revenues',
    ];

    public function startup()
    {
        return $this->belongsTo(Startup::class, 'startup_id', 'id');
    }
}
