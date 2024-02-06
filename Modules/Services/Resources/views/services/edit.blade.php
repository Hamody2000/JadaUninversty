@extends('backend.master')

@section('title')
    {{ @$data['title'] }}
@endsection

@section('content')
    <div class="page-content">

        {{-- breadecrumb Area S t a r t --}}
        @include('backend.ui-components.breadcrumb', [
            'title' => @$data['title'],
            'routes' => [
                route('dashboard') => ___('common.Dashboard'),
                '#' => @$data['title'],
            ],

            'buttons' => 1,
        ])
        {{-- bradecrumb Area E n d --}}
        <div class="card ot-card">
            <div class="card-body">
                <form action="{{ route('services.update', $data['service']->id) }}" enctype="multipart/form-data" method="post" id="visitForm">
                    @csrf
                    @method('PUT')
                    <div class="row mb-3">
                        <div class="col-lg-12">
                            <div class="row">

                                <!-- Start Ar, En inputs for Service Title -->
                                <div class="col-xl-6 col-md-6 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('services.Service Title') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('title') is-invalid @enderror" name="title"
                                           list="datalistOptions" id="exampleDataList"
                                           value="{{ @$data['service']->getTranslation('title', 'en') ?? old('title') }}"
                                           placeholder="{{ ___('services.Enter Service Title') }}">
                                    @error('title')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>

                                <div class="col-xl-6 col-md-6 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('services.Service Arabic Title') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('title_ar') is-invalid @enderror" name="title_ar"
                                           list="datalistOptions" id="exampleDataList"
                                           value="{{ @$data['service']->getTranslation('title', 'ar') ?? old('title_ar') }}"
                                           placeholder="{{ ___('services.Enter Service Title In Arabic') }}">
                                    @error('title_ar')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                                <!-- End Ar, En inputs for Service Title -->

                                <!-- Start Ar, En inputs for Service Description -->
                                <div class="col-xl-6 col-md-6 mb-3">
                                    <label for="exampleInputEmail1" class="form-label">{{ ___('services.Description') }} <span
                                            class="fillable">*</span></label>
                                    <input type="text" name="description"
                                           value="{{ @$data['service']->getTranslation('description', 'en') ?? old('description') }}"
                                           class="form-control ot-input  @error('description') is-invalid @enderror"
                                           id="exampleInput"
                                           placeholder="{{ ___('services.Enter Service Description') }}">
                                    @error('description')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>

                                <div class="col-xl-6 col-md-6 mb-3">
                                    <label for="exampleInput" class="form-label">{{ ___('services.Arabic Description') }} <span
                                            class="fillable">*</span></label>
                                    <input type="text" name="description_ar"
                                           value="{{ @$data['service']->getTranslation('description', 'ar') ?? old('description_ar') }}"
                                           class="form-control ot-input  @error('description_ar') is-invalid @enderror"
                                           id="exampleInput"
                                           placeholder="{{ ___('services.Enter Service Description In Arabic') }}">
                                    @error('description_ar')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                                <!-- End Ar, En inputs for Service Description -->

                                <div class="col-xl-12 col-md-6 mb-3">
                                    <label for="designation" class="form-label ">
                                        {{ ___('services.Image') }}
                                    </label>
                                    <div
                                        @if(@$data['service']->image)
                                            data-val="{{ showImage($data['service']->image->original) }}"
                                        @endif
                                         data-name="image" class="file @error('image') is-invalid @enderror"
                                         data-height="200px ">
                                    </div>
                                    <small
                                        class="text-muted">{{ ___('placeholder.NB : The image size will 100px x 100px and not more than 1mb') }}</small>
                                    @error('image')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>

                            </div>
                        </div>

                        <div class="col-md-12 mt-24">
                            <div class="text-end">
                                <button class="btn btn-lg ot-btn-primary">{{ ___('common.submit') }}</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
