@extends('backend.master')
@section('title')
Update Zoom Settings
@endsection

@section('content')

    <head>
        <!-- Other head elements -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-switch@3.3.4/dist/css/bootstrap3/bootstrap-switch.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap-switch@3.3.4/dist/js/bootstrap-switch.min.js"></script>
    </head>

    <div class="container">

        @if($errors->any())
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                <ul>
                    @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            
            <script>
                var alertList = document.querySelectorAll('.alert');
                alertList.forEach(function (alert) {
                    new bootstrap.Alert(alert)
                })
            </script>
        @endif

        <h2>Update Zoom Settings</h2>
        <form id="settingForm" method="post" action="{{ route('zoom_live_class_settings.update') }}">
            <!-- , ['class' => $classId] -->
            @csrf

            <div class="mb-3">
                <label for="approval_type" class="form-label">Approval Type</label>
                <select class="form-select" name="approval_type">
                    <option value="0" {{ old('approval_type', $defaultData['approvalType']) == 0 ? 'selected' : '' }}>Automatic</option>
                    <option value="1" {{ old('approval_type', $defaultData['approvalType']) == 1 ? 'selected' : '' }}>Manually</option>
                    <option value="2" {{ old('approval_type', $defaultData['approvalType']) == 2 ? 'selected' : '' }}>No Registration</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="audio" class="form-label">Audio</label>
                <select class="form-select" name="audio">
                    <option value="both" {{ old('audio', $defaultData['audio']) == 'both' ? 'selected' : '' }}>Both</option>
                    <option value="telephony" {{ old('audio', $defaultData['audio']) == 'telephony' ? 'selected' : '' }}>Telephony</option>
                    <option value="voip" {{ old('audio', $defaultData['audio']) == 'voip' ? 'selected' : '' }}>VoIP</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="auto_recording" class="form-label">Auto Recording</label>
                <select class="form-select" name="auto_recording">
                    <option value="none" {{ old('auto_recording', $defaultData['autoRecording']) == 'none' ? 'selected' : '' }}>None</option>
                    <option value="local" {{ old('auto_recording', $defaultData['autoRecording']) == 'local' ? 'selected' : '' }}>Local</option>
                    <option value="cloud" {{ old('auto_recording', $defaultData['autoRecording']) == 'cloud' ? 'selected' : '' }}>Cloud</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="package_id" class="form-label">Package ID</label>
                <input type="text" class="form-control" name="package_id" value="{{ old('package_id', $defaultData['package_id']) }}">
            </div>

            <!-- Host Video -->
            <div class="mb-3 form-check form-switch">
                <input type="hidden" name="host_video" value="0">
                <input type="checkbox" class="form-check-input" name="host_video" role="switch" id="flexSwitchHostVideo" {{ old('host_video', $defaultData['hostVideo']) ? 'checked' : '' }}>
                <label class="form-check-label" for="flexSwitchHostVideo">Host Video</label>
            </div>

            <!-- Participant Video -->
            <div class="mb-3 form-check form-switch">
                <input type="hidden" name="participant_video" value="0">
                <input type="checkbox" class="form-check-input" name="participant_video" role="switch" id="flexSwitchParticipantVideo" {{ old('participant_video', $defaultData['participantVideo']) ? 'checked' : '' }}>
                <label class="form-check-label" for="flexSwitchParticipantVideo">Participant Video</label>
            </div>

            <!-- Join Before Host -->
            <div class="mb-3 form-check form-switch">
                <input type="hidden" name="join_before_host" value="0">
                <input type="checkbox" class="form-check-input" name="join_before_host" role="switch" id="flexSwitchJoinBeforeHost" {{ old('join_before_host', $defaultData['joinBeforeHost']) ? 'checked' : '' }}>
                <label class="form-check-label" for="flexSwitchJoinBeforeHost">Join Before Host</label>
            </div>

            <!-- Waiting Room -->
            <div class="mb-3 form-check form-switch">
                <input type="hidden" name="waiting_room" value="0">
                <input type="checkbox" class="form-check-input" name="waiting_room" role="switch" id="flexSwitchWaitingRoom" {{ old('waiting_room', $defaultData['waitingRoom']) ? 'checked' : '' }}>
                <label class="form-check-label" for="flexSwitchWaitingRoom">Waiting Room</label>
            </div>

            <!-- Mute Upon Entry -->
            <div class="mb-3 form-check form-switch">
                <input type="hidden" name="mute_upon_entry" value="0">
                <input type="checkbox" class="form-check-input" name="mute_upon_entry" role="switch" id="flexSwitchMuteUponEntry" {{ old('mute_upon_entry', $defaultData['muteUponEntry']) ? 'checked' : '' }}>
                <label class="form-check-label" for="flexSwitchMuteUponEntry">Mute Upon Entry</label>
            </div>

            <div class="mb-3">
                <label for="client_id" class="form-label">Client ID</label>
                <input type="text" class="form-control" name="client_id" value="{{ old('client_id', $defaultData['clientId']) }}">
            </div>

            <div class="mb-3">
                <label for="client_secret" class="form-label">Client Secret</label>
                <input type="text" class="form-control" name="client_secret" value="{{ old('client_secret', $defaultData['clientSecret']) }}">
            </div>

            <div class="mb-3">
                <label for="account_id" class="form-label">Account ID</label>
                <input type="text" class="form-control" name="account_id" value="{{ old('account_id', $defaultData['accountId']) }}">
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
        </form>

        <!-- Include this script in your HTML file -->
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                document.getElementById('settingForm').addEventListener('submit', function () {
                    document.querySelectorAll('[type="checkbox"]').forEach(function (checkbox) {
                        checkbox.value = checkbox.checked ? '1' : '0';
                    });
                });
            });
        </script>


    </div>
@endsection
