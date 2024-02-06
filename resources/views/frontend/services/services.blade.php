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
                            <h3 class="title font-700 text-white">{{ ___('frontend.Our Services') }}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

			<section class="min">
				<div class="container">

					<div class="row justify-content-center">
						<div class="col-lg-7 col-md-8">
							<div class="sec-heading center">
								<h2><span class="theme-cl">{{ ___('frontend.Our Services') }}</span></h2>
								<p>{{ ___('frontend.Our Services Text') }}</p>
							</div>
						</div>
					</div>

					<div class="row justify-content-center">

						@foreach($data['services'] as $service)
                            <!-- Single Item -->
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                                <div class="blg_grid_box">
                                    <div class="blg_grid_thumb text-center">
                                        <a href="{{ route('frontend.service-details', $service->id) }}">
                                            <img src="{{ $service->image ? asset('storage/' . $service->image->original) : url('frontend/assets/NewImages/b-3.png') }}" class="img-fluid w-100" alt="" />
                                        </a>
                                    </div>
                                    <div class="blg_grid_caption">
                                        <div class="blg_title"><h4><a href="{{ route('frontend.service-details', $service->id) }}">{{ App::currentLocale() == 'ar' ? Str::limit(@$service->getTranslation('title', 'ar'), 30) : Str::limit(@$service->title, 30) }}</a></h4></div>
                                        <div class="blg_desc"><p>{{ App::currentLocale() == 'ar' ? Str::limit(@$service->getTranslation('description', 'ar'), 50) : Str::limit(@$service->description, 50) }}</p></div>
                                    </div>
                                </div>
                            </div>
						@endforeach

					</div>

				</div>
			</section>
			<div class="clearfix"></div>

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
			<!-- ============================ Call To Action End ================================== -->

    </div>



@endsection
@section('scripts')

@endsection
