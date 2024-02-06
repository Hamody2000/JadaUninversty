<?php

namespace Modules\ZoomMeeting\Entities;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ZoomMeeting extends Model
{
    use HasFactory;

    protected $fillable = [];

    // search by title
    public function scopeSearch($query, $req)
    {
        $where = [];
        if (@$req->search) {
            $where[] = ['topic', 'like', '%' . @$req->search . '%'];
        }

        return $query->where($where);
    }

    public function getCurrentStatusAttribute()
    {
        $now = Carbon::now();
        if ($this->is_recurring == 1) {
            if ($now->between(Carbon::parse($this->start_time)->addMinute(-10)->format('Y-m-d H:i:s'), Carbon::parse($this->recurring_end_date)->endOfDay()->format('Y-m-d H:i:s'))) {
                return 'started';
            }
            if (!$now->gt(Carbon::parse($this->recurring_end_date)->addMinute(-10))) {
                return 'waiting';
            }
            return 'closed';
        } else {
            if (Carbon::parse($this->end_time)->format('Y-m-d H:i:s') >= $now->format('Y-m-d H:i:s')) {
                return 'started';
            }
            return 'closed';
        }
    }
}
