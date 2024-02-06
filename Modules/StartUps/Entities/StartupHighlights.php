<?php

namespace Modules\StartUps\Entities;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Modules\StartUps\Entities\Startup;

class StartupHighlights extends Model
{
    use HasFactory;

    protected $fillable = [
        'startup_id',
        'market_size',
        'trees_saved',
        'compliance_european_standards',
        'sales_pipeline',
        'profit_margin',
    ];

    public function startup()
    {
        return $this->belongsTo(Startup::class, 'startup_id', 'id');
    }
}
