@extends('frontend.layouts.master')
@section('title', @$data['title'])
@section('content')

<div class="ot-bradcam-area footer-bg">
    <div class="container">
        <div class="ot-bradcam-inner">
            <div class="row">
                <div class="col-xl-12">
                    <div class="ot-bradcam-inner-wrapper">
                        <div class="bradcam-text">
                            <h3 class="title font-700 text-white">{{ $data->title }}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="AboutUSPage">
    {{-- About Info --}}
    <div class="container">
        <div class="AboutUsContent">
            <div class="row">
                <div class="col-lg-6 col-md-6 ol-sm-6 col-xs-12">
                    <div class="ImageBox">
                        <img src="{{ $data->image ? asset('storage/' . $data->image->original) : url('frontend/assets/NewImages/Image-11_0.png') }}" alt="sss">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 ol-sm-6 col-xs-12">
                    <div class="AboutDatat">
                        <div class="ForFlexx">
                            <h1 class="fw-bolder">{{ ___('about.About Jeddah University') }}</h1>
                            {!! $data->content ?? 'No Content Exists' !!}
                        <!-- <div class="Deacriptiton">
                            <p> Jada Universty Accelerator allows portfolio managers to maximise alpha generation with the Alternative Investment Management Global Platform (AIMgp), with a unique three-pillar approach of providing: </p>
                            <ul>
                                <li>Legal, regulatory and compliance infrastructure</li>
                                <li>Institutional operational and technological infrastructure</li>
                                <li>Capital introduction and asset raising network</li>
                            </ul>
                            <p>This provides a complete, fully integrated solution for hedge funds, private equity, venture capital and family offices to efficiently launch, manage and grow funds in a cost effective manner.</p>
                            <p>This provides a complete, fully integrated solution for hedge funds, private equity, venture capital and family offices to efficiently launch, manage and grow funds in a cost effective manner.</p>
                        -->

                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Mission & Vision --}}
    <div class="container">
        <div class="AboutUsContent">
            <div class="row">
                {{-- Our Vision --}}
                <div class="col-lg-6 col-md-6 ol-sm-6 col-xs-12">
                    <div class="AboutDatat">
                        <div class="ForFlexx">
                            <h2>{{ ___('frontend.Our Vission') }}</h2>
                            <div class="Deacriptiton">
                                <p>{{ App::currentLocale() == 'ar' ? $data->getTranslation('vision', 'ar') : $data->vision }}</p>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Our Mission --}}
                <div class="col-lg-6 col-md-6 ol-sm-6 col-xs-12">
                    <div class="AboutDatat">
                        <div class="ForFlexx">
                            <h2>{{ ___('frontend.Our Mission') }} </h2>
                            <div class="Deacriptiton">
                                <p>{{ App::currentLocale() == 'ar' ? $data->getTranslation('mission', 'ar') : $data->mission }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Our Values --}}
    <div class="container">
        <div class="AboutUsContent">
            <div class="row">
                <div class="col-lg-7 col-md-8 ol-sm-6 col-xs-12">
                    <div class="AboutDatat">
                        <div class="ForFlexx">
                            <h2>{{ ___('frontend.Our Values') }}</h2>
                            <div class="Deacriptiton">
                                <p>{{ App::currentLocale() == 'ar' ? $data->getTranslation('values', 'ar') : $data->values }}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-4 ol-sm-6 col-xs-12">
                    <div class="ImageBox">
                        <img src="{{ $data->image ? asset('storage/' . $data->image->original) : url('frontend/assets/NewImages/Image-11_0.png') }}" alt="sss">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- Team Members --}}
<div class="SectionTemaMembers">
    <div class="container">

        <div class="row justify-content-center">
            <div class="col-lg-7 col-md-10 text-center">
                <div class="sec-heading center mb-4">
                    <h2>{{ ___('frontend.Our Team Members') }}</h2>
                </div>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <div class="tutor-slide testimonial-active swiper arrow-style">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">

                            <div class="lios_item">
                                <div class="crs_trt_grid theme-light shadow_none">
                                    <div class="crs_trt_thumb">
                                        <a href="instructor-detail.html" class="crs_trt_thum_link">
                                            <img src="{{ url('frontend/assets/NewImages/t-3.png') }}" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="crs_trt_caption large">
                                        <div class="instructor_tag dark"><span>Sanskrit Teacher</span></div>
                                        <div class="instructor_title"><h4><a href="instructor-detail.html">Luella J. Robles</a></h4></div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide">

                            <div class="lios_item">
                                <div class="crs_trt_grid theme-light shadow_none">
                                    <div class="crs_trt_thumb">
                                        <a href="instructor-detail.html" class="crs_trt_thum_link">
                                            <img src="{{ url('frontend/assets/NewImages/t-5.png') }}" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="crs_trt_caption large">
                                        <div class="instructor_tag dark"><span>Sanskrit Teacher</span></div>
                                        <div class="instructor_title"><h4><a href="instructor-detail.html">Luella J. Robles</a></h4></div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide">

                            <div class="lios_item">
                                <div class="crs_trt_grid theme-light shadow_none">
                                    <div class="crs_trt_thumb">
                                        <a href="instructor-detail.html" class="crs_trt_thum_link">
                                            <img src="{{ url('frontend/assets/NewImages/t-4.png') }}" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="crs_trt_caption large">
                                        <div class="instructor_tag dark"><span>Sanskrit Teacher</span></div>
                                        <div class="instructor_title"><h4><a href="instructor-detail.html">Luella J. Robles</a></h4></div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide">

                            <div class="lios_item">
                                <div class="crs_trt_grid theme-light shadow_none">
                                    <div class="crs_trt_thumb">
                                        <a href="instructor-detail.html" class="crs_trt_thum_link">
                                            <img src="{{ url('frontend/assets/NewImages/t-6.png') }}" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="crs_trt_caption large">
                                        <div class="instructor_tag dark"><span>Sanskrit Teacher</span></div>
                                        <div class="instructor_title"><h4><a href="instructor-detail.html">Luella J. Robles</a></h4></div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-button-next swiper-btn">
                        <i class="ri-arrow-right-line"></i>
                    </div>
                    <div class="swiper-button-prev swiper-btn">
                        <i class="ri-arrow-left-line"></i>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>

{{-- Testimonials Today --}}
<section class="testimonial-area bottom-padding2 pt-50" id="ot_testimonials_area" @if(@$section->color) style="background:{{ @$section->color }}" @endif>

</section>

{{-- Contact Us Today --}}
<section class="theme-bg call_action_wrap-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="call_action_wrap">
                            <div class="call_action_wrap-head">
                                <h3>{{ ___('frontend.Do You Have Questions ?') }}</h3>
                                <span>{{ ___('frontend.help text') }}</span>
                            </div>
                            <a href="{{ route('frontend.contact_us') }}" class="btn btn-call_action_wrap">{{ ___('frontend.Contact Us Today') }}</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

@endsection
@section('scripts')

@endsection
