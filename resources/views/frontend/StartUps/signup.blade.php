@extends('frontend.layouts.master')
@section('title', @$data['title'])

@section('css')
    <!-- Custom CSS  start -->
    <link rel="stylesheet" href="{{ asset('backend') }}/assets/css/style.css">
@endsection

@section('content')
    @auth
    <div class="ot-bradcam-area footer-bg">
        <div class="container">
            <div class="ot-bradcam-inner">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="ot-bradcam-inner-wrapper">
                            <div class="bradcam-text">
                                <h3 class="title font-700 text-white">{{ ___('frontend.Singup Now As A Startup') }}</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="page-content w-75 mx-auto my-5">
        <!-- Form with multiStep S t a r t-->
        <div class="form-with-multistep section-padding ot-card overflow-hidden">
            <div class="container-fluid">
                <div class="row justify-content-center">

                    <div class="col-sm-12">
                        <div class="multiStep-wrapper border-bottom pb-10">
                            <div class="multiStep-wrapper-flex">
                                <div class="multiStep-wrapper-left h-calc radius-8 overflow-hidden">

                                    <ul class="step-list-wrapper list-style-none d-flex mx-auto">
                                        <li class="single-step-list-step tab1 current-items general">
                                            <span class="single-multiStep-request-list-item-number  active">
                                                <div class="single-wrap">
                                                    <i class="las la-dice"></i>
                                                    <span>{{ ___('startups.Startup Info') }}</span>
                                                </div>
                                            </span>
                                        </li>
                                        <li class="single-step-list-step tab2">
                                            <span class="single-multiStep-request-list-item-number ">
                                                <div class="single-wrap">
                                                    <i class="las la-dice"></i>
                                                    <span>{{ ___('startups.Founder Details') }}</span>
                                                </div>
                                            </span>
                                        </li>
                                        <li class="single-step-list-step tab3">
                                            <span class="single-multiStep-request-list-item-number ">
                                                <div class="single-wrap">
                                                    <i class="las la-dice"></i>
                                                    <span>{{ ___('startups.Co-Founder Details') }}</span>
                                                </div>
                                            </span>
                                        </li>
                                        <li class="single-step-list-step tab4">
                                            <span class="single-multiStep-request-list-item-number ">
                                                <div class="single-wrap">
                                                    <i class="las la-dice"></i>
                                                    <span>{{ ___('course.Complete') }}</span>
                                                </div>
                                            </span>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="multiStep-wrapper">
                            <form action="{{ route('frontend.startups.storeSignup') }}" enctype="multipart/form-data" method="post" id="courseSubmit">
                                @csrf
                                <div class="multiStep-wrapper-flex">
                                    <!-- Start startup info -->
                                    <div class="multiStep-wrapper-contents step1 active">
                                        <div class="mb-24 border-0 pt-0">
                                            <div class="row">

                                                <!-- Start Ar, En inputs for Startup Title -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="title" class="form-label ">{{ ___('startups.Startup Title') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('title') is-invalid @enderror" name="title"
                                                           list="datalistOptions" id="title" value="{{ old('title') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Title') }}">
                                                    @error('title')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="title_ar" class="form-label ">{{ ___('startups.Startup Arabic Title') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('title_ar') is-invalid @enderror" name="title_ar"
                                                           list="datalistOptions" id="title_ar" value="{{ old('title_ar') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Title In Arabic') }}">
                                                    @error('title_ar')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Title -->

                                                <!-- Start Ar, En inputs for Startup Description -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="description" class="form-label">{{ ___('startups.Description') }} <span
                                                            class="fillable">*</span></label>
                                                    <textarea
                                                        name="description"
                                                        id="description"
                                                        class="form-control ot-textarea  @error('description') is-invalid @enderror"
                                                        placeholder="{{ ___('startups.Enter Startup Description') }}"
                                                    >{{ old('description') }}</textarea>
                                                    @error('description')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="description_ar" class="form-label">{{ ___('startups.Arabic Description') }} <span
                                                            class="fillable">*</span></label>
                                                    <textarea
                                                        name="description_ar"
                                                        id="description_ar"
                                                        class="form-control ot-textarea  @error('description_ar') is-invalid @enderror"
                                                        placeholder="{{ ___('startups.Enter Startup Description In Arabic') }}"
                                                    >{{ old('description_ar') }}</textarea>
                                                    @error('description_ar')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Description -->

                                                <!-- Start Ar, En inputs for Startup Industry -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="industry" class="form-label ">{{ ___('startups.Startup Industry') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('industry') is-invalid @enderror" name="industry"
                                                           list="datalistOptions" id="industry" value="{{ old('industry') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Industry') }}">
                                                    @error('industry')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="industry_ar" class="form-label ">{{ ___('startups.Startup Arabic Industry') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('industry_ar') is-invalid @enderror" name="industry_ar"
                                                           list="datalistOptions" id="industry_ar" value="{{ old('industry_ar') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Industry In Arabic') }}">
                                                    @error('industry_ar')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Industry -->

                                                <!-- Start Ar, En inputs for Startup Mission -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="mission" class="form-label ">{{ ___('startups.Startup Mission') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('mission') is-invalid @enderror" name="mission"
                                                           list="datalistOptions" id="mission" value="{{ old('mission') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Mission') }}">
                                                    @error('mission')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="mission_ar" class="form-label ">{{ ___('startups.Startup Arabic Mission') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('mission_ar') is-invalid @enderror" name="mission_ar"
                                                           list="datalistOptions" id="mission_ar" value="{{ old('mission_ar') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Mission In Arabic') }}">
                                                    @error('mission_ar')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Mission -->

                                                <!-- Start Ar, En inputs for Startup Vision -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="vision" class="form-label ">{{ ___('startups.Startup Vision') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('vision') is-invalid @enderror" name="vision"
                                                           list="datalistOptions" id="vision" value="{{ old('vision') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Vision') }}">
                                                    @error('vision')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="vision_ar" class="form-label ">{{ ___('startups.Startup Arabic Vision') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('vision_ar') is-invalid @enderror" name="vision_ar"
                                                           list="datalistOptions" id="vision_ar" value="{{ old('vision_ar') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Vision In Arabic') }}">
                                                    @error('vision_ar')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Vision -->

                                                <!-- Start Ar, En inputs for Startup Email, Contact -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="email" class="form-label ">{{ ___('startups.Startup Email') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('email') is-invalid @enderror" name="email"
                                                           list="datalistOptions" id="email" value="{{ old('email') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Email') }}">
                                                    @error('email')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="contact_num" class="form-label ">{{ ___('startups.Startup Contact Number') }} <span
                                                            class="fillable">*</span></label>
                                                    <input type="number" class="form-control ot-input @error('contact_num') is-invalid @enderror" name="contact_num"
                                                           list="datalistOptions" id="contact_num" value="{{ old('contact_num') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Contact Number') }}">
                                                    @error('contact_num')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Email, Contact -->

                                                <!-- Start Ar, En inputs for Startup Website -->
                                                <div class="col-xl-12 col-md-12 mb-3">
                                                    <label for="exampleDataList" class="form-label ">{{ ___('startups.Startup Website') }}</label>
                                                    <input class="form-control ot-input @error('website') is-invalid @enderror" name="website"
                                                           list="datalistOptions" id="exampleDataList" value="{{ old('website') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Website') }}">
                                                    @error('website')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Website -->

                                                <!-- Start Startup Image -->
                                                <div class="col-xl-12 col-md-6 mb-3">
                                                    <label for="designation" class="form-label ">
                                                        {{ ___('startups.Image') }}
                                                    </label>
                                                    <div data-val=""
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
                                                <!-- End Startup Image -->

                                            </div>
                                        </div>
                                    </div>
                                    <!-- End startup info -->

                                    <!-- Start founder form-->
                                    <div class="multiStep-wrapper-contents step2 ">
                                        <div class="mb-24 border-0 pt-0">
                                            <div class="row">

                                                <!-- Start Ar, En inputs for Startup Founder Name -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="founder_name" class="form-label ">{{ ___('startups.Startup Founder Name') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('founder_name') is-invalid @enderror" name="founder_name"
                                                           list="datalistOptions" id="founder_name" value="{{ old('founder_name') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Founder Name') }}">
                                                    @error('founder_name')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="founder_name_ar" class="form-label ">{{ ___('startups.Startup Arabic Founder Name') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('founder_name_ar') is-invalid @enderror" name="founder_name_ar"
                                                           list="datalistOptions" id="founder_name_ar" value="{{ old('founder_name_ar') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Founder Name In Arabic') }}">
                                                    @error('founder_name_ar')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Founder Name -->

                                                <!-- Start Ar, En inputs for Startup Founder Role -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="founder_role" class="form-label ">{{ ___('startups.Startup Founder Role') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('founder_role') is-invalid @enderror" name="founder_role"
                                                           list="datalistOptions" id="founder_role" value="{{ old('founder_role') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Founder Role') }}">
                                                    @error('founder_role')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="founder_role_ar" class="form-label ">{{ ___('startups.Startup Arabic Founder Role') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('founder_role_ar') is-invalid @enderror" name="founder_role_ar"
                                                           list="datalistOptions" id="founder_role_ar" value="{{ old('founder_role_ar') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Founder Role In Arabic') }}">
                                                    @error('founder_role_ar')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Founder Role -->

                                                <!-- Start Ar, En inputs for Startup Email, LinkedIn -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="founder_email" class="form-label ">{{ ___('startups.Startup Founder Email') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('founder_email') is-invalid @enderror" name="founder_email"
                                                           list="datalistOptions" id="founder_email" value="{{ old('founder_email') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Founder Email') }}">
                                                    @error('founder_email')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="founder_linkedin_url" class="form-label ">{{ ___('startups.Startup Founder LinkedIn Url') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('founder_linkedin_url') is-invalid @enderror" name="founder_linkedin_url"
                                                           list="datalistOptions" id="founder_linkedin_url" value="{{ old('founder_linkedin_url') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Founder LinkedIn Url') }}">
                                                    @error('founder_linkedin_url')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Email, LinkedIn -->

                                                <!-- Start Startup Founder Image -->
                                                <div class="col-xl-12 col-md-6 mb-3">
                                                    <label for="designation" class="form-label ">
                                                        {{ ___('startups.Founder Image') }}
                                                    </label>
                                                    <div data-val=""
                                                         data-name="founder_image" class="file @error('founder_image') is-invalid @enderror"
                                                         data-height="200px ">
                                                    </div>
                                                    <small
                                                        class="text-muted">{{ ___('placeholder.NB : The founder image size will 100px x 100px and not more than 1mb') }}</small>
                                                    @error('founder_image')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Startup Founder Image -->

                                            </div>
                                        </div>
                                    </div>
                                    <!-- End founder form-->

                                    <!-- Start co-founder form-->
                                    <div class="multiStep-wrapper-contents step3 ">
                                        <!-- Form -->
                                        <div class="mb-24 border-0 pt-0">
                                            <div class="row">

                                                <!-- Start Ar, En inputs for Startup Co-Founder Name -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="co_founder_name" class="form-label ">{{ ___('startups.Startup Co-Founder Name') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('co_founder_name') is-invalid @enderror" name="co_founder_name"
                                                           list="datalistOptions" id="co_founder_name" value="{{ old('co_founder_name') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Co-Founder Name') }}">
                                                    @error('co_founder_name')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="co_founder_name_ar" class="form-label ">{{ ___('startups.Startup Arabic Co-Founder Name') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('co_founder_name_ar') is-invalid @enderror" name="co_founder_name_ar"
                                                           list="datalistOptions" id="co_founder_name_ar" value="{{ old('co_founder_name_ar') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Co-Founder Name In Arabic') }}">
                                                    @error('co_founder_name_ar')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Co-Founder Name -->

                                                <!-- Start Ar, En inputs for Startup Co-Founder Role -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="co_founder_role" class="form-label ">{{ ___('startups.Startup Co-Founder Role') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('co_founder_role') is-invalid @enderror" name="co_founder_role"
                                                           list="datalistOptions" id="co_founder_role" value="{{ old('co_founder_role') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Co-Founder Role') }}">
                                                    @error('co_founder_role')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="co_founder_role_ar" class="form-label ">{{ ___('startups.Startup Arabic Co-Founder Role') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('co_founder_role_ar') is-invalid @enderror" name="co_founder_role_ar"
                                                           list="datalistOptions" id="co_founder_role_ar" value="{{ old('co_founder_role_ar') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Co-Founder Role In Arabic') }}">
                                                    @error('co_founder_role_ar')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Co-Founder Role -->

                                                <!-- Start Ar, En inputs for Startup Email, LinkedIn -->
                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="co_founder_email" class="form-label ">{{ ___('startups.Startup Co-Founder Email') }} <span
                                                            class="fillable">*</span></label>
                                                    <input class="form-control ot-input @error('co_founder_email') is-invalid @enderror" name="co_founder_email"
                                                           list="datalistOptions" id="co_founder_email" value="{{ old('co_founder_email') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Co-Founder Email') }}">
                                                    @error('co_founder_email')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>

                                                <div class="col-xl-6 col-md-6 mb-3">
                                                    <label for="co_founder_linkedin_url" class="form-label ">{{ ___('startups.Startup Co-Founder LinkedIn Url') }}</label>
                                                    <input class="form-control ot-input @error('co_founder_linkedin_url') is-invalid @enderror" name="co_founder_linkedin_url"
                                                           list="datalistOptions" id="co_founder_linkedin_url" value="{{ old('co_founder_linkedin_url') }}"
                                                           placeholder="{{ ___('startups.Enter Startup Co-Founder LinkedIn Url') }}">
                                                    @error('co_founder_linkedin_url')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Ar, En inputs for Startup Email, LinkedIn -->

                                                <!-- Start Startup Co-Founder Image -->
                                                <div class="col-xl-12 col-md-6 mb-3">
                                                    <label for="designation" class="form-label ">
                                                        {{ ___('startups.Co-Founder Image') }}
                                                    </label>
                                                    <div data-val=""
                                                         data-name="co_founder_image" class="file @error('co_founder_image') is-invalid @enderror"
                                                         data-height="200px ">
                                                    </div>
                                                    <small
                                                        class="text-muted">{{ ___('placeholder.NB : The founder image size will 100px x 100px and not more than 1mb') }}</small>
                                                    @error('co_founder_image')
                                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                    @enderror
                                                </div>
                                                <!-- End Startup Co-Founder Image -->

                                            </div>
                                        </div>
                                    </div>
                                    <!-- End co-founder form -->

                                    <!-- Start complete form -->
                                    <div class="multiStep-wrapper-contents text-center step4 ">
                                        <h2>{{ ___('ui_element.Everything looks good') }}</h2>
                                        <p>{{ ___('ui_element.Click on the button below to submit your form') }}</p>
                                        <button type="submit"
                                                class="btn btn-lg ot-btn-primary">{{ ___('common.Submit') }}</button>
                                    </div>
                                    <!-- End complete form -->
                                </div>
                            </form>
                        </div>

                        <div class="multiStep-footer mb-20">
                            <div class="multiStep-footer-flex ml-14 mr-14">
                                <div class="multiStep-footer-left">
                                    <a href="javascript:void(0)"
                                       class="multiStep-footer-back previous ot-btn-primary ot-primary-btn"
                                       id="previous"> {{ ___('course.Back') }} </a>
                                </div>
                                <div class="multiStep-footer-right">
                                    <a href="javascript:void(0)"
                                       class="multiStep-footer-next next ot-btn-primary btn-primary-fill"
                                       id="next">{{ ___('course.Next') }} </a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- form-with-multiStep End -->
    </div>
    @endauth

    @if (!auth()->check())
    <div class="page_content text-center my-5">
        <h1 class="text-danger fw-bold my-5">{{ ___('frontend.Please Login To Signup as a Startup') }}</h1>
    </div>
    @endif
@endsection

@push('script')
    <script src="{{ asset('backend/assets/js/startup.js') }}"></script>
@endpush
