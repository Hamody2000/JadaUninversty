@extends('backend.master')
@section('title')
Create New Zoom Meeting
@endsection

@section('content')
    <div class="container">
        <h2>Create a New Zoom Meeting</h2>
        <form method="post" action="{{ route('zoom_live_classes.store') }}">
            <!-- , ['class' => $classId] -->
            @csrf

            {{-- Add your form fields --}}
            <div class="form-group my-3">
                <label for="title">Title</label>
                <input value="{{ old('title') }}" type="text" name="title" class="form-control @error('title') border-danger @enderror" required>
                @error('title')
                    <small class="text-danger">{{ $message }}</small>
                @enderror
            </div>

            <div class="form-group my-3">
                <label for="start_date">Start Date</label>
                <input value="{{ old('start_date') }}" type="date" name="start_date" class="form-control @error('start_date') border-danger @enderror" required>
                @error('start_date')
                    <small class="text-danger">{{ $message }}</small>
                @enderror
            </div>

            <div class="form-group my-3">
                <label for="time">Time</label>
                <input value="{{ old('time') }}" type="time" name="time" class="form-control @error('time') border-danger @enderror" required>
                @error('time')
                    <small class="text-danger">{{ $message }}</small>
                @enderror
            </div>

            <div class="form-group my-3">
                <label for="duration">Duration (in minutes)</label>
                <input value="{{ old('duration') }}" type="number" name="duration" class="form-control @error('duration') border-danger @enderror" required>
                @error('duration')
                    <small class="text-danger">{{ $message }}</small>
                @enderror
            </div>

            <div class="form-group my-3">
                <label for="password">Password</label>
                <input value="{{ old('password') }}" type="text" name="password" class="form-control @error('password') border-danger @enderror" required>
                @error('password')
                    <small class="text-danger">{{ $message }}</small>
                @enderror
            </div>

            {{-- Add more form fields based on your requirements --}}
            <!-- Example: Additional fields used in the repository's store method -->

            <div class="form-group my-3">
                <label for="is_recurring">Is Recurring?</label>
                <select name="is_recurring" class="form-control" required>
                    <option value="0">No</option>
                    <option value="1">Yes</option>
                </select>
            </div>

            <div class="form-group my-3">
                <label for="recurring_type">Recurring Type</label>
                <input value="{{ old('recurring_type') }}" type="text" name="recurring_type" class="form-control @error('recurring_type') border-danger @enderror">
                @error('recurring_type')
                    <small class="text-danger">{{ $message }}</small>
                @enderror
            </div>

            <div class="form-group my-3">
                <label for="recurring_repeat_day">Recurring Repeat Day</label>
                <input value="{{ old('recurring_repeat_day') }}" type="text" name="recurring_repeat_day" class="form-control @error('recurring_repeat_day') border-danger @enderror">
                @error('recurring_repeat_day')
                    <small class="text-danger">{{ $message }}</small>
                @enderror
            </div>

            <div class="form-group my-3">
                <label for="recurring_end_date">Recurring End Date</label>
                <input value="{{ old('recurring_end_date') }}" type="date" name="recurring_end_date" class="form-control @error('recurring_end_date') border-danger @enderror">
                @error('recurring_end_date')
                    <small class="text-danger">{{ $message }}</small>
                @enderror
            </div>

            {{-- End of additional fields --}}

            <button type="submit" class="btn btn-primary">Create Meeting</button>
        </form>
    </div>
@endsection
