<?php

namespace Modules\ZoomMeeting\Interfaces;

interface ZoomMeetingInterface
{

    public function model();

    public function store($request, $class);

    public function update($request, $class);

    public function destroy($class);

    public function zoomDestroy($meeting);

    public function getZoomMeeting($meeting_id);
}
