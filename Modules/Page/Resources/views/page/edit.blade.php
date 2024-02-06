@extends('backend.master')
@section('title')
    {{ @$data['title'] }}
@endsection
@push('css')
    <link rel="stylesheet" href="{{ asset('backend/assets/summernote/summernote.css') }}">
@endpush
@section('content')
    <div class="page-content">

        {{-- breadecrumb Area S t a r t --}}
        @include('backend.ui-components.breadcrumb', [
            'title' => @$data['title'],
            'routes' => [
                route('dashboard') => ___('common.Dashboard'),
                route('pages.index') => ___('page.Page'),
                '#' => @$data['title'],
            ],
            'buttons' => 0,
        ])
        {{-- breadecrumb Area E n d --}}

        <!--  category create start -->
        <div class="card ot-card">

            <div class="card-body">
                <form action="{{ route('pages.update', $data['page']->id) }}" enctype="multipart/form-data" method="post">
                    @csrf
                    @method('PUT')
                    {{-- Style Two --}}
                    <div class="row mb-3">
                        <div class="col-lg-12">
                            <div class="row">
                                
                                <!-- Start Title Ar,En Inputs -->
                                <div class="col-xl-6 col-md-6 mb-3">
                                    <label for="title" class="form-label ">{{ ___('common.Title En') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('title') is-invalid @enderror" name="title"
                                        list="datalistOptions" id="title"
                                        placeholder="{{ ___('placeholder.Enter Title') }}"
                                        value="{{ @$data['page']->getTranslation('title', 'en') ?? old('title') }}">
                                    @error('title')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <div class="col-xl-6 col-md-6 mb-3">
                                    <label for="title_ar" class="form-label ">{{ ___('common.Title Ar') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('title_ar') is-invalid @enderror" name="title_ar"
                                        list="datalistOptions" id="title_ar"
                                        placeholder="{{ ___('placeholder.Enter Arabic Title') }}"
                                        value="{{ @$data['page']->getTranslation('title', 'ar') ?? old('title_ar') }}">
                                    @error('title_ar')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <!-- End Title Ar,En Inputs -->


                                <div class="col-xl-6 col-md-6 mb-3">
                                    <label for="status" class="form-label ">{{ ___('common.Status') }}<span
                                            class="fillable">*</span></label>
                                    <select class="form-select ot-input select2 @error('status_id') is-invalid @enderror"
                                        id="status" required name="status_id">
                                        <option @if (@$data['page']->status_id == '1') {{ 'selected' }} @endif value="1">
                                            {{ ___('common.Active') }}</option>
                                        <option @if (@$data['page']->status_id == '2') {{ 'selected' }} @endif
                                            value="2">
                                            {{ ___('common.Inactive') }}</option>
                                    </select>
                                    @error('status_id')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-xl-6 col-md-6 mb-3">
                                    <label for="section" class="form-label ">{{ ___('common.Section') }}</label>
                                    <select class="form-select ot-input select2 @error('section') is-invalid @enderror"
                                        id="section" name="section[]" multiple>
                                        @foreach ($data['sections'] as $section)
                                            <option value="{{ $section->id }}"
                                                @if (in_array($section->id, json_decode($data['page']->section) ?? [])) selected @endif>
                                                {{ $section->title }}</option>
                                        @endforeach
                                    </select>
                                    @error('section')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <div class="col-xl-6 col-md-6 mb-3">
                                    <label for="type" class="form-label ">{{ ___('common.Type') }}<span
                                            class="fillable">*</span></label>
                                    <select
                                        class="form-select ot-input select2 @error('type') is-invalid @enderror page_content_type"
                                        id="type" required name="type">
                                        <option @if (@$data['page']->type == '1' || old('type') == '1') {{ 'selected' }} @endif
                                            value="1">
                                            {{ ___('common.Content') }}</option>
                                        <option @if (@$data['page']->type == '2' || old('type') == '2') {{ 'selected' }} @endif
                                            value="2">
                                            {{ ___('common.Image') }}</option>
                                        <option @if (@$data['page']->type == '3' || old('type') == '3') {{ 'selected' }} @endif
                                            value="3">
                                            {{ ___('common.Image And Content') }}</option>
                                    </select>
                                    @error('type')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>




                                <div class="col-xl-12 col-md-12 mb-3 custom-height page-type-image d-none">
                                    <label for="content" class="form-label ">{{ ___('common.Image') }}<span
                                            class="fillable">*</span></label>
                                    <div @if (@$data['page']->image) data-val="{{ showImage(@$data['page']->image->original) }}" @endif
                                        data-name="image" class="file @error('image') is-invalid @enderror"
                                        data-height="200px "></div>
                                    @error('image')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <div class="col-xl-12 col-md-12 mb-3 both-type">
                                    <label for="widget_type" class="form-label ">{{ ___('common.Widget_Type') }}<span
                                            class="fillable">*</span></label>
                                    <select class="form-select ot-input select2 @error('widget_type') is-invalid @enderror"
                                        id="widget_type" required name="widget_type">
                                        <option @if (@$data['page']->widget_type == '1' || old('widget_type') == '1') {{ 'selected' }} @endif
                                            value="1">
                                            {{ ___('common.Full-Width') }}</option>
                                        <option @if (@$data['page']->widget_type == '2' || old('widget_type') == '2') {{ 'selected' }} @endif
                                            value="2">
                                            {{ ___('common.Half-Width') }}</option>
                                    </select>
                                    @error('widget_type')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <!-- Page Content With Ar,En inputs -->
                                <div class="col-xl-12 col-md-12 mb-3 page-type-content">
                                    <label for="content" class="form-label ">{{ ___('common.Content En') }}<span class="fillable">*</span></label>
                                    <textarea
                                        class="form-control summernote @error('content') is-invalid @enderror"
                                        name="content" list="datalistOptions"
                                        rows="20" id="content"
                                        placeholder="{{ ___('placeholder.Enter Content En') }}"
                                    >
                                        <?= @$data['page']->getTranslation('content', 'en') ?? old('content') ?>
                                    </textarea>
                                    @error('content')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <div class="col-xl-12 col-md-12 mb-3 page-type-content">
                                    <label for="content_ar" class="form-label ">{{ ___('common.Content Ar') }}<span class="fillable">*</span></label>
                                    <textarea
                                        class="form-control summernote @error('content_ar') is-invalid @enderror"
                                        name="content_ar" list="datalistOptions"
                                        rows="20" id="content_ar"
                                        placeholder="{{ ___('placeholder.Enter Content Ar') }}"
                                    >
                                        <?= @$data['page']->getTranslation('content', 'ar') ?? old('content_ar') ?>
                                    </textarea>
                                    @error('content_ar')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <!-- End Page Content With Ar,En inputs -->

                                @if( preg_match("/\babout\b/i", $data['page']->getTranslation('title', 'en')) )
                                    <!-- Our Mission Ar,En inputs -->
                                    <div class="col-xl-6 col-md-6 mb-3">
                                        <label for="mission_ar" class="form-label ">{{ ___('common.Our Mission Ar') }} <span
                                                class="fillable">*</span></label>
                                        <input class="form-control ot-input @error('mission_ar') is-invalid @enderror" name="mission_ar"
                                            list="datalistOptions" id="mission_ar"
                                            placeholder="{{ ___('placeholder.Enter Our Mission Text In Arabic') }}"
                                            value="{{ @$data['page']->getTranslation('mission', 'ar') ?? old('mission') }}">
                                        @error('mission_ar')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>

                                    <div class="col-xl-6 col-md-6 mb-3">
                                        <label for="mission_en" class="form-label ">{{ ___('common.Our Mission En') }} <span
                                                class="fillable">*</span></label>
                                        <input class="form-control ot-input @error('mission_en') is-invalid @enderror" name="mission_en"
                                            list="datalistOptions" id="mission_en"
                                            placeholder="{{ ___('placeholder.Enter Our Mission Text In English') }}"
                                            value="{{ @$data['page']->getTranslation('mission', 'en') ?? old('mission_en') }}">
                                        @error('mission_en')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                    <!-- End Of Our Mission -->

                                    <!-- Our Vision Ar,En inputs -->
                                    <div class="col-xl-6 col-md-6 mb-3">
                                        <label for="vision_ar" class="form-label ">{{ ___('common.Our Vision Ar') }} <span
                                                class="fillable">*</span></label>
                                        <input class="form-control ot-input @error('vision_ar') is-invalid @enderror" name="vision_ar"
                                            list="datalistOptions" id="vision_ar"
                                            placeholder="{{ ___('placeholder.Enter Our Vision Text In English') }}"
                                            value="{{ @$data['page']->getTranslation('vision', 'ar') ?? old('vision_ar') }}">
                                        @error('vision_ar')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>

                                    <div class="col-xl-6 col-md-6 mb-3">
                                        <label for="vision_en" class="form-label ">{{ ___('common.Our Vision En') }} <span
                                                class="fillable">*</span></label>
                                        <input class="form-control ot-input @error('vision_en') is-invalid @enderror" name="vision_en"
                                            list="datalistOptions" id="vision_en"
                                            placeholder="{{ ___('placeholder.Enter Our Vision Text In English') }}"
                                            value="{{ @$data['page']->getTranslation('vision', 'en') ?? old('vision_en') }}">
                                        @error('vision_en')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                    <!-- End Of Our Vision -->

                                    <!-- Our Values Ar,En inputs -->
                                    <div class="col-xl-6 col-md-6 mb-3">
                                        <label for="values_ar" class="form-label ">{{ ___('common.Our Values Ar') }} <span
                                                class="fillable">*</span></label>
                                        <input class="form-control ot-input @error('values_ar') is-invalid @enderror" name="values_ar"
                                            list="datalistOptions" id="values_ar"
                                            placeholder="{{ ___('placeholder.Enter Our Values Text In Arabic') }}"
                                            value="{{ @$data['page']->getTranslation('values', 'ar') ?? old('values_ar') }}">
                                        @error('values_ar')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>

                                    <div class="col-xl-6 col-md-6 mb-3">
                                        <label for="values_en" class="form-label ">{{ ___('common.Our Values En') }} <span
                                                class="fillable">*</span></label>
                                        <input class="form-control ot-input @error('values_en') is-invalid @enderror" name="values_en"
                                            list="datalistOptions" id="values_en"
                                            placeholder="{{ ___('placeholder.Enter Our Values Text In English') }}"
                                            value="{{ @$data['page']->getTranslation('values', 'en') ?? old('values_en') }}">
                                        @error('values_en')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                    <!-- End Of Our Values -->
                                @endif

                            </div>
                        </div>

                        <div class="col-lg-12 mt-3">
                            <div class="text-left">
                                <button class="btn btn-lg ot-btn-primary" type="submit">
                                    </span>{{ @$data['button'] }}</button>
                            </div>
                        </div>
                    </div>
            </div>
        </div>

        <!--  category create end -->
    </div>
@endsection

@push('script')
    <script src="{{ asset('backend/assets/summernote/summernote.js') }}"></script>
@endpush
