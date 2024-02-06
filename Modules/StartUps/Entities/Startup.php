<?php

namespace Modules\StartUps\Entities;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Modules\StartUps\Entities\StartupAdvisors;
use Modules\StartUps\Entities\StartupHighlights;
use Modules\StartUps\Entities\StartupHowItWorks;
use Modules\StartUps\Entities\StartupImpact;
use Modules\StartUps\Entities\StartupPartnerships;
use Modules\StartUps\Entities\StartupProblem;
use Modules\StartUps\Entities\StartupSolution;
use Modules\StartUps\Entities\StartupTeam;
use Modules\StartUps\Entities\StartupTraction;

class Startup extends Model
{
    use HasFactory, HasTranslations;

    protected $fillable = [
        'title',
        'description',
        'industry',
        'mission',
        'vision',
        'website',
        'email',
        'contact_num',
        'image',

        'founder_name',
        'founder_role',
        'founder_email',
        'founder_linkedin_url',
        'founder_image',

        'co_founder_name',
        'co_founder_role',
        'co_founder_email',
        'co_founder_linkedin_url',
        'co_founder_image',
        
        'created_by'
    ];

    public $translatable = [
        'title',
        'description',
        'industry',
        'mission',
        'vision',

        'founder_name',
        'founder_role',

        'co_founder_name',
        'co_founder_role',
    ];

    public function image()
    {
        return $this->belongsTo('App\Models\Upload', 'image_id');
    }

    public function founder_image()
    {
        return $this->belongsTo('App\Models\Upload', 'founder_image_id');
    }

    public function co_founder_image()
    {
        return $this->belongsTo('App\Models\Upload', 'co_founder_image_id');
    }

    public function scopeTitle($query, $title)
    {
        return $query->where('title', 'like', '%' . $title . '%');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'created_by', 'id');
    }

    // New Modifications
    public function highLights()
    {
        return $this->hasOne(StartupHighlights::class, 'startup_id', 'id');
    }

    public function problem()
    {
        return $this->hasOne(StartupProblem::class, 'startup_id', 'id');
    }

    public function solution()
    {
        return $this->hasOne(StartupSolution::class, 'startup_id', 'id');
    }

    public function howItWorks()
    {
        return $this->hasOne(StartupHowItWorks::class, 'startup_id', 'id');
    }

    public function impacts()
    {
        return $this->hasMany(StartupImpact::class, 'startup_id', 'id');
    }

    public function traction()
    {
        return $this->hasOne(StartupTraction::class, 'startup_id', 'id');
    }

    public function partnerships()
    {
        return $this->hasMany(StartupPartnerships::class, 'startup_id', 'id');
    }

    public function teamMembers()
    {
        return $this->hasMany(StartupTeam::class, 'startup_id', 'id');
    }

    public function advisors()
    {
        return $this->hasMany(StartupAdvisors::class, 'startup_id', 'id');
    }
}
