<?php

namespace Modules\ZoomMeeting\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Routing\Controller;
use App\Traits\ApiReturnFormatTrait;
use Illuminate\Support\Facades\Auth;
use Illuminate\Contracts\Support\Renderable;
use Modules\ZoomMeeting\Entities\ZoomMeeting;
use Modules\ZoomMeeting\Entities\ZoomSetting;
use Modules\ZoomMeeting\Interfaces\ZoomMeetingInterface;
use Modules\ZoomMeeting\Http\Requests\ZoomSettingRequest;
use Modules\ZoomMeeting\Interfaces\ZoomSettingsInterface;

class ZoomMeetingController extends Controller
{
    use ApiReturnFormatTrait;

    protected $zoomSettings;
    protected $zoomMeeting;

    public function __construct(
        ZoomSettingsInterface $zoomSettingsRepository,
        ZoomMeetingInterface $zoomMeetingRepository
    ) {
        $this->zoomSettings = $zoomSettingsRepository;
        $this->zoomMeeting = $zoomMeetingRepository;
    }
    
    public function index ()
    {
        try {
            if (env('APP_DEMO')) {
                return $this->responseWithError(___('alert.you_can_not_change_in_demo_mode'));
            }

            $meetings = ZoomMeeting::all();
            dd($meetings);
            if ($meetings) {
                return redirect()->back()->with('success', $meetings);
            } else {
                return redirect()->back()->with('danger', 'Error to get all meetings...!');
            }
        } catch (\Throwable $th) {
            return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

    public function createZoomMeeting ()
    {
        try {
            return view('zoommeeting::LiveClasses.create');
        } catch (\Throwable $th) {
            return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

    public function store(Request $request)
    {
        // dd($request->all());
        // Validate the request data
        $request->validate([
            'title' => 'required|string|max:255',
            'start_date' => 'required|date',
            'time' => 'required|date_format:H:i',
            'duration' => 'required|integer|min:1',
            'password' => 'required|string|max:255',
            'is_recurring' => 'required|boolean',
            'recurring_type' => 'sometimes',
            'recurring_repeat_day' => 'sometimes',
            'recurring_end_date' => 'sometimes',
        ]);

        // Call the store method on the repository
        $result = $this->zoomMeeting->store($request, 1);

        // Handle the result (success or error)
        if ($result) {
            dd($result->original['message']);
            // Success: Do something (e.g., redirect, return a response)
            return redirect()->route('zoom_live_classes.index')->with('success', 'تمت بنجاح تيست');//$result->message);
        } else {
            // Error: Do something else (e.g., redirect back with error message)
            return redirect()->back()->with('error', $result->message);
        }
    }

    public function zoomSettingsEdit ()
    {
        try {
            $dbData = ZoomSetting::where('user_id', Auth::id())->first();

            if ($dbData) {
                $defaultData = [
                    'approvalType' => $dbData->approval_type,
                    'autoRecording' => $dbData->auto_recording,
                    'audio' => $dbData->audio,
                    'package_id' => $dbData->package_id,
                    'hostVideo' => $dbData->host_video,
                    'participantVideo' => $dbData->participant_video,
                    'joinBeforeHost' => $dbData->join_before_host,
                    'waitingRoom' => $dbData->waiting_room,
                    'muteUponEntry' => $dbData->mute_upon_entry,
                    'clientId' => $dbData->client_id,
                    'clientSecret' => $dbData->client_secret,
                    'accountId' => $dbData->account_id,
                ];
            } else {
                $defaultData = [
                    'approvalType' => 1,
                    'autoRecording' => 'none',
                    'audio' => 'both',
                    'package_id' => 1,
                    'hostVideo' => 0,
                    'participantVideo' => 0,
                    'joinBeforeHost' => 0,
                    'waitingRoom' => 0,
                    'muteUponEntry' => 0,
                    'clientId' => 1,
                    'clientSecret' => 1,
                    'accountId' => 1,
                ];
            }
            
            return view('zoommeeting::LiveClasses.editSettings', compact('defaultData'));
        } catch (\Throwable $th) {
            return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    
    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function zoomUpdate(ZoomSettingRequest $request)
    {
        try {
            if (env('APP_DEMO')) {
                return $this->responseWithError(___('alert.you_can_not_change_in_demo_mode'));
            }

            $sensitiveData = [
                'client_id' => config('zoom.client_id'),
                'client_secret' => config('zoom.client_secret'),
                'account_id' => config('zoom.account_id'),
            ];

            $request->merge($sensitiveData);

            $result = $this->zoomSettings->zoomUpdate($request);
            if ($result->original['result']) {
                return redirect()->back()->with('success', $result->original['message']);
            } else {
                return redirect()->back()->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return redirect()->back()->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

}
