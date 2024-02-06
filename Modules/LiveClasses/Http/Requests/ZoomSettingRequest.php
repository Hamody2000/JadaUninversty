<?php

namespace Modules\ZoomMeeting\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ZoomSettingRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            "approval_type" => "required|max:30",
            "auto_recording" => "required|max:30",
            "audio" => "required|max:30",
            "package_id" => "required|max:30",
            "host_video" => "required|max:30",
            "participant_video" => "required|max:30",
            "join_before_host" => "required|max:30",
            "waiting_room" => "required|max:30",
            "mute_upon_entry" => "required|max:30",
            "client_id" => "required|max:255",
            "client_secret" => "required|max:255",
            "account_id" => "required|max:255",
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    public function messages()
    {
        return [
            'approval_type.required' => ___('validation.approval_type_is_required'),
            'approval_type.max' => ___('validation.approval_type_must_be_less_than_30_characters'),
            'auto_recording.required' => ___('validation.auto_recording_is_required'),
            'auto_recording.max' => ___('validation.auto_recording_must_be_less_than_30_characters'),
            'audio.required' => ___('validation.audio_is_required'),
            'audio.max' => ___('validation.audio_must_be_less_than_30_characters'),
            'package_id.required' => ___('validation.package_is_required'),
            'package_id.max' => ___('validation.package_must_be_less_than_30_characters'),
            'host_video.required' => ___('validation.host_video_is_required'),
            'host_video.max' => ___('validation.host_video_must_be_less_than_30_characters'),
            'participant_video.required' => ___('validation.participant_video_is_required'),
            'participant_video.max' => ___('validation.participant_video_must_be_less_than_30_characters'),
            'join_before_host.required' => ___('validation.join_before_host_is_required'),
            'join_before_host.max' => ___('validation.join_before_host_must_be_less_than_30_characters'),
            'waiting_room.required' => ___('validation.waiting_room_is_required'),
            'waiting_room.max' => ___('validation.waiting_room_must_be_less_than_30_characters'),
            'mute_upon_entry.required' => ___('validation.mute_upon_entry_is_required'),
            'mute_upon_entry.max' => ___('validation.mute_upon_entry_must_be_less_than_30_characters'),
            'client_id.required' => ___('validation.client_id_is_required'),
            'client_id.max' => ___('validation.client_id_entry_must_be_less_than_255_characters'),
            'client_secret.required' => ___('validation.client_secret_is_required'),
            'client_secret.max' => ___('validation.client_secret_entry_must_be_less_than_255_characters'),
            'account_id.required' => ___('validation.account_id_is_required'),
            'account_id.max' => ___('validation.account_id_entry_must_be_less_than_255_characters'),
        ];
    }

}
