@extends('panel.student.layouts.master')
@section('title', @$data['title'])

@section('css')
    <!-- Custom CSS  start -->
    <link rel="stylesheet" href="{{ asset('backend') }}/assets/css/style.css">
@endsection

@section('content')
    <section>
        <div class="row">
            <!-- Section Tittle -->
            <div class="col-xl-12">
                <div class="section-tittle-two d-flex align-items-center justify-content-between flex-wrap mb-10">
                    <h2 class="title font-600 mb-20">{{ @$data['title'] }}</h2>
                </div>
            </div>
        </div>
        <!-- Report Table -->
        <div class="row">
            <div class="col-xxl-12 col-xl-12">
                <div class="mb-24">

                    <!-- Form with multiStep S t a r t-->
                    <div class="form-with-multistep section-padding ot-card overflow-hidden">
                        <div class="container-fluid">
                            <div class="row justify-content-center">

                            

                                <div class="col-sm-12">
                                    <div class="multiStep-wrapper">
                                        <form action="{{ route('startups.howItWorks.update', $data['startup']->id) }}" enctype="multipart/form-data" method="post" id="visitForm">
                                            @csrf
                                            @method('PUT')
                                            <div class="multiStep-wrapper-flex">
                                                <!-- Start startup info -->
                                                <div class="multiStep-wrapper-contents step1 active">
                                                    <div class="mb-24 border-0 pt-0">
                                                        <div class="row">

                                                            <!-- Start Ar, En inputs for Startup How It Works Title -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="title" class="form-label ">{{ ___('startups.Startup How It Works Title') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input class="form-control ot-input @error('title') is-invalid @enderror" name="title"
                                                                    list="datalistOptions" id="title"
                                                                    value="{{ @$data['startup']->howItWorks->title ? @$data['startup']->howItWorks->getTranslation('title', 'en') : old('title') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup How It Works Title') }}">
                                                                @error('title')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>

                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="title_ar" class="form-label ">{{ ___('startups.Startup How It Works Arabic Title') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input class="form-control ot-input @error('title_ar') is-invalid @enderror" name="title_ar"
                                                                    list="datalistOptions" id="title_ar"
                                                                    value="{{ @$data['startup']->howItWorks->title ? @$data['startup']->howItWorks->getTranslation('title', 'ar') : old('title') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup How It Works Title In Arabic') }}">
                                                                @error('title_ar')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Ar, En inputs for Startup How It Works Title -->

                                                            <!-- Start Ar, En inputs for Startup How It Works Description -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="description" class="form-label">{{ ___('startups.How It Works Description') }} <span
                                                                        class="fillable">*</span></label>
                                                                <textarea
                                                                    name="description"
                                                                    id="description"
                                                                    class="form-control ot-textarea  @error('description') is-invalid @enderror"
                                                                    placeholder="{{ ___('startups.Enter Startup How It Works Description') }}"
                                                                >{{ @$data['startup']->howItWorks->description ? @$data['startup']->howItWorks->getTranslation('description', 'en') : old('description') }}</textarea>
                                                                @error('description')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>

                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="description_ar" class="form-label">{{ ___('startups.Arabic How It Works Description') }} <span
                                                                        class="fillable">*</span></label>
                                                                <textarea
                                                                    name="description_ar"
                                                                    id="description_ar"
                                                                    class="form-control ot-textarea  @error('description_ar') is-invalid @enderror"
                                                                    placeholder="{{ ___('startups.Enter Startup How It Works Description In Arabic') }}"
                                                                >{{ @$data['startup']->howItWorks->description ? @$data['startup']->howItWorks->getTranslation('description', 'ar') : old('description') }}</textarea>
                                                                @error('description_ar')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Ar, En inputs for Startup How It Works Description -->

                                                            <!-- Start Startup How It Works Image -->
                                                            <div class="col-xl-12 col-md-6 mb-3">
                                                                <label for="designation" class="form-label ">
                                                                    {{ ___('startups.How It Works Image') }}
                                                                </label>
                                                                <div
                                                                    @if(@$data['startup']->howItWorks)
                                                                        data-val="{{ showImage($data['startup']->howItWorks->image->original) }}"
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
                                                            <!-- End Startup How It Works Image -->

                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- End startup info -->

                                                <!-- Start complete form -->
                                                <div>
                                                    <button type="submit"
                                                            class="btn btn-primary">{{ ___('common.Submit') }}</button>
                                                </div>
                                                <!-- End complete form -->
                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- form-with-multiStep End -->

                </div>
            </div>
        </div>
    </section>
@endsection