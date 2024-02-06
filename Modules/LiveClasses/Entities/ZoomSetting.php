<?php

namespace Modules\ZoomMeeting\Entities;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ZoomSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'client_id',
        'client_secret',
        'account_id',
        'host_video',
        'participant_video',
        'join_before_host',
        'audio',
        'auto_recording',
        'approval_type',
        'mute_upon_entry',
        'waiting_room',
        'status_id',
        'package_id',
    ];

    public function user ()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
