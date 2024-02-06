<?php

namespace Modules\ZoomMeeting\Repositories;

use App\Traits\ApiReturnFormatTrait;
use App\Traits\CommonHelperTrait;
use App\Traits\FileUploadTrait;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Jubaer\Zoom\Facades\Zoom;
use Modules\ZoomMeeting\Entities\ZoomMeeting;
use Modules\ZoomMeeting\Entities\ZoomMeetingUser;
use Modules\ZoomMeeting\Interfaces\ZoomMeetingInterface;

class ZoomMeetingRepository implements ZoomMeetingInterface
{
    use ApiReturnFormatTrait, FileUploadTrait, CommonHelperTrait;

    public function model()
    {
        return new ZoomMeeting;
    }
    public function zoomMeetingUserModel()
    {
        return new ZoomMeetingUser;
    }

    public function store($request, $class = 1)
    {
        try {
            // $result = Zoom::getUsers(['status' => 'active']); // status active, inactive, pending
            // if ($result['status']) {
            if (true) {

                $setting = auth()->user()->zoomSetting;
                // $users = $result['data'];
                // $profile = $users['profile'];
                $profile['email'] = Auth::user()->email;
                $start_date = Carbon::parse($request->start_date)->format('Y-m-d') . ' ' . date("H:i:s", strtotime($request->time));
                
                $meetings = Zoom::createMeeting([
                    "agenda" => $request->title,
                    "topic" => $request->title,
                    "type" => 2,
                    "duration" => $request->duration,
                    "timezone" => setting('active_time_zone') ?? 'Asia/Dhaka',
                    "password" => $request->password,
                    "start_time" => $start_date,
                    "template_id" => "Dv4YdINdTk+Z5RToadh5ug==",
                    "pre_schedule" => false,
                    "schedule_for" => $profile['email'],
                    "settings" => [
                        'join_before_host' => @$setting->join_before_host ? true : false,
                        'host_video' => @$setting->host_video ? true : false,
                        'participant_video' => @$setting->participant_video ? true : false,
                        'mute_upon_entry' => @$setting->mute_upon_entry ? true : false,
                        'waiting_room' => @$setting->waiting_room ? true : false,
                        'audio' => @$setting->audio,
                        'auto_recording' => @$setting->auto_recording ? @$setting->auto_recording : 'none',
                        'approval_type' => @$setting->approval_type,
                    ],

                ]);

                dd($meetings);


                if ($meetings['status']) {
                    $meeting = $meetings['data'];
                    $meeting_id = $meeting['id'];
                    $password = $meeting['password'];

                    // save meeting in system

                    $zoom_meeting = $this->model();
                    $zoom_meeting->topic = $request->title;
                    $zoom_meeting->instructor_id = auth()->user()->id;
                    // $zoom_meeting->class_id = $class->id;
                    $zoom_meeting->class_id = $class;
                    $zoom_meeting->description = @$request->content ?? null;
                    $zoom_meeting->date_of_meeting = $request->start_date;
                    $zoom_meeting->time_of_meeting = $request->time;
                    $zoom_meeting->meeting_duration = $request->duration;
                    $zoom_meeting->host_video = @$setting->host_video ? true : false;
                    $zoom_meeting->participant_video = @$setting->participant_video ? true : false;
                    $zoom_meeting->join_before_host = @$setting->join_before_host ? true : false;
                    $zoom_meeting->mute_upon_entry = @$setting->mute_upon_entry ? true : false;
                    $zoom_meeting->waiting_room = @$setting->waiting_room ? true : false;
                    $zoom_meeting->audio = @$setting->audio ? @$setting->audio : 'both';
                    $zoom_meeting->auto_recording = @$setting->auto_recording ? @$setting->auto_recording : 'none';
                    $zoom_meeting->approval_type = @$setting->approval_type ? @$setting->approval_type : 0;
                    $zoom_meeting->is_recurring = @$request->is_recurring == 1 ? 1 : 0;
                    $zoom_meeting->recurring_type = @$request->is_recurring == 1 ? $request->recurring_type : null;
                    $zoom_meeting->recurring_repeat_day = @$request->is_recurring == 1 ? $request->recurring_repeat_day : null;
                    $zoom_meeting->recurring_end_date = @$request->is_recurring == 1 ? $request->recurring_end_date : null;
                    $zoom_meeting->meeting_id = strval($meeting_id);
                    $zoom_meeting->password = $password;
                    $zoom_meeting->start_time = Carbon::parse($start_date)->toDateTimeString();
                    // dd($start_date . ' ' . $zoom_meeting->start_time);
                    $zoom_meeting->end_time = Carbon::parse($zoom_meeting->start_time)->addMinute($request->duration)->toDateTimeString();
                    $zoom_meeting->created_by = auth()->user()->id;
                    $zoom_meeting->save();

                    // save meeting in zoom

                    // save meeting user in zoom
                    $zoom_meeting_user = $this->zoomMeetingUserModel();
                    $zoom_meeting_user->user_id = auth()->user()->id;
                    $zoom_meeting_user->zoom_meeting_id = $zoom_meeting->id;
                    $zoom_meeting_user->host = 1;
                    $zoom_meeting_user->save();
                    // save meeting user in zoom
                    return $this->responseWithSuccess(___('alert.Live_class_created_successfully.')); // return success response
                } else {
                    return $this->responseWithError($meetings['message'], [], 400); // return error response
                }
            } else {
                return $this->responseWithError($result['message'], [], 400); // return error response
            }
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }

    public function update($request, $class)
    {
        try {
            $result = Zoom::getUsers(['status' => 'active']); // status active, inactive, pending
            if ($result['status']) {
                foreach ($class->zoomMeetings as $key => $value) {
                    $del_result = Zoom::deleteMeeting($value->meeting_id);
                    if ($del_result['status']) {
                        $this->zoomMeetingUserModel()->where('zoom_meeting_id', $value->id)->delete();
                        $value->delete();
                    }
                }
                $setting = auth()->user()->zoomSetting;
                $users = $result['data'];
                $profile = $users['profile'];
                $start_date = Carbon::parse($request->start_date)->format('Y-m-d') . ' ' . date("H:i:s", strtotime($request->time));
                $meetings = Zoom::createMeeting([
                    "agenda" => $request->title,
                    "topic" => $request->title,
                    "type" => 2,
                    "duration" => $request->duration,
                    "timezone" => setting('active_time_zone') ?? 'Asia/Dhaka',
                    "password" => $request->password,
                    "start_time" => $start_date,
                    "template_id" => "Dv4YdINdTk+Z5RToadh5ug==",
                    "pre_schedule" => false,
                    "schedule_for" => $profile['email'],
                    "settings" => [
                        'join_before_host' => @$setting->join_before_host ? true : false,
                        'host_video' => @$setting->host_video ? true : false,
                        'participant_video' => @$setting->participant_video ? true : false,
                        'mute_upon_entry' => @$setting->mute_upon_entry ? true : false,
                        'waiting_room' => @$setting->waiting_room ? true : false,
                        'audio' => @$setting->audio,
                        'auto_recording' => @$setting->auto_recording ? @$setting->auto_recording : 'none',
                        'approval_type' => @$setting->approval_type,
                    ],

                ]);
                if ($meetings['status']) {
                    $meeting = $meetings['data'];
                    $meeting_id = $meeting['id'];
                    $password = $meeting['password'];

                    // save meeting in system
                    $zoom_meeting = $this->model();
                    $zoom_meeting->topic = $request->title;
                    $zoom_meeting->instructor_id = auth()->user()->id;
                    $zoom_meeting->class_id = $class->id;
                    $zoom_meeting->description = @$request->content ?? null;
                    $zoom_meeting->date_of_meeting = $request->start_date;
                    $zoom_meeting->time_of_meeting = $request->time;
                    $zoom_meeting->meeting_duration = $request->duration;
                    $zoom_meeting->host_video = @$setting->host_video ? true : false;
                    $zoom_meeting->participant_video = @$setting->participant_video ? true : false;
                    $zoom_meeting->join_before_host = @$setting->join_before_host ? true : false;
                    $zoom_meeting->mute_upon_entry = @$setting->mute_upon_entry ? true : false;
                    $zoom_meeting->waiting_room = @$setting->waiting_room ? true : false;
                    $zoom_meeting->audio = @$setting->audio;
                    $zoom_meeting->auto_recording = @$setting->auto_recording ? @$setting->auto_recording : 'none';
                    $zoom_meeting->approval_type = @$setting->approval_type;
                    $zoom_meeting->is_recurring = @$request->is_recurring;
                    $zoom_meeting->recurring_type = @$request->is_recurring == 1 ? $request->recurring_type : null;
                    $zoom_meeting->recurring_repeat_day = @$request->is_recurring == 1 ? $request->recurring_repeat_day : null;
                    $zoom_meeting->recurring_end_date = @$request->is_recurring == 1 ? $request->recurring_end_date : null;
                    $zoom_meeting->meeting_id = strval($meeting_id);
                    $zoom_meeting->password = $password;
                    $zoom_meeting->start_time = Carbon::parse($start_date)->toDateTimeString();
                    $zoom_meeting->end_time = Carbon::parse($start_date . ' ' . $request->time)->addMinute($request->duration)->toDateTimeString();
                    $zoom_meeting->created_by = auth()->user()->id;
                    $zoom_meeting->save();

                    // save meeting in zoom

                    // save meeting user in zoom
                    $zoom_meeting_user = $this->zoomMeetingUserModel();
                    $zoom_meeting_user->user_id = auth()->user()->id;
                    $zoom_meeting_user->zoom_meeting_id = $zoom_meeting->id;
                    $zoom_meeting_user->host = 1;
                    $zoom_meeting_user->save();
                    // save meeting user in zoom
                    return $this->responseWithSuccess(___('alert.Live_class_created_successfully.')); // return success response
                } else {
                    return $this->responseWithError($meetings['message'], [], 400); // return error response
                }
            } else {
                return $this->responseWithError($result['message'], [], 400); // return error response
            }
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }

    public function getZoomMeeting($meeting_id)
    {
        try {
            $meeting = $this->model()->where('id', $meeting_id)->first();
            if (@$meeting) {
                $result = Zoom::getMeeting($meeting->meeting_id);
                if ($result['status']) {
                    return $this->responseWithSuccess(___('alert.zoom_meeting_found.'), $result['data']); // return success response
                } else {
                    return $this->responseWithError($result['message'], [], 400); // return error response
                }
            } else {
                return $this->responseWithError(___('alert.zoom_meeting_not_found.'), [], 400); // return error response
            }
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }

    public function destroy($class = null)
    {
        try {
            foreach ($class->zoomMeetings as $key => $value) {
                Zoom::deleteMeeting($value->meeting_id);
                $this->zoomMeetingUserModel()->where('zoom_meeting_id', $value->id)->delete();
                $value->delete();
            }
            return $this->responseWithSuccess(___('alert.zoom_meeting_deleted_successfully.')); // return success response
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }

    public function zoomDestroy($meeting_id)
    {
        try {
            $meeting = $this->model()->find($meeting_id);
            if (@$meeting) {
                $result = Zoom::deleteMeeting($meeting->meeting_id);
                if ($result['status']) {
                    $this->model()->where('id', $meeting->class_id)->delete();
                    $this->zoomMeetingUserModel()->where('zoom_meeting_id', $meeting->id)->delete();
                    return $this->responseWithSuccess(___('alert.zoom_meeting_deleted_successfully.')); // return success response
                } else {
                    return $this->responseWithError(___("alert.You_are_not_authorized_to_delete_zoom_meeting"), [], 400); // return error response
                }
            } else {
                return $this->responseWithError(___('alert.zoom_meeting_not_found.'), [], 400); // return error response
            }
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }
}
