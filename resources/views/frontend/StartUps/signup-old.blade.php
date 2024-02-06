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
                            <h3 class="title font-700 text-white">{{ ___('frontend.Singup Now As A Startup') }}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


    <section class="ot-courses-area section-padding StartUpSignUpPage">
        <div class="container">
            <div class="row justify-content-center">


                <div class=" col-xl-8">
                    <div class="position-relative BoxxSignuppp">
                        <form action="{{ route('frontend.contact_us.store') }}" method="post">
                            @csrf
                            <div class="row">
                            <div class="col-12">
                                <div class="section-tittle mb-30 text-center">
                                    <h4 class="title text-capitalize font-600 position-relative">{{ ___('frontend.Send Request To Signup As A Startup') }}</h4>
                                </div>
                            </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="position-relative ot-contact-form mb-24">
                                        <label for="name" class="ot-contact-label">{{ ___('frontend.Name') }}</label>
                                        <input class="form-control ot-contact-input" type="text"
                                            placeholder="{{ ___('frontend.enter_your_name') }}" name="name" id="name"
                                            aria-label="default input example">

                                        @error('name')
                                            <div id="error" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror

                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="position-relative ot-contact-form mb-24">
                                <label for="email"
                                    class="ot-contact-label">{{ ___('frontend.Email') }}</label>
                                <input class="form-control ot-contact-input" type="email"
                                    placeholder="{{ ___('frontend.enter_your_email') }}" name="email" id="email"
                                    aria-label="default input example">
                                @error('email')
                                    <div id="error" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror

                            </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="position-relative ot-contact-form mb-24">
                                <label for="subject"
                                    class="ot-contact-label">{{ ___('frontend.Subject') }}</label>
                                <input class="form-control ot-contact-input" type="subject" id="subject"
                                    placeholder="{{ ___('frontend.enter_your_subject') }}" name="subject"
                                    aria-label="default input example">
                                @error('subject')
                                    <div id="error" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror

                            </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="position-relative ot-contact-form mb-24">
                                <label for="message"
                                    class="ot-contact-label">{{ ___('frontend.Message') }}</label>
                                <textarea class="ot-contact-textarea" placeholder="{{ ___('frontend.enter_your_message') }}" name="message"
                                    id="message" cols="10" rows="8"></textarea>
                                @error('message')
                                    <div id="error" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <button class="btn-primary-submit">{{ ___('frontend.Send_Message') }}</button>
                                </div>
                            </div>




                        </form>


                    </div>
                </div>
            </div>
        </div>
    </section>



@endsection

@section('scripts')
@endsection
