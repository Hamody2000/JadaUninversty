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
                            <h3 class="title font-700 text-white">{{ ___('frontend.Our Services') }} / {{ App::currentLocale() == 'ar' ? @$service->getTranslation('title', 'ar') : @$service->title }}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



			<section class="pt-5">

				<div class="container">


					<div class="row justify-content-center">


						<div class="col-lg-10 col-md-12 col-sm-12 col-12">
							<div class="article_detail_wrapss single_article_wrap format-standard">
								<div class="article_body_wrap">

									<div class="article_featured_image">
                                        <img src="{{ $service->image ? asset('storage/' . $service->image->original) : url('frontend/assets/NewImages/b-3.png') }}" class="img-fluid w-100" alt="" />
                                    </div>
                                    <div class="Descgrtreerrf">
                                        <div class="blg_title"><h4>{{ App::currentLocale() == 'ar' ? @$service->getTranslation('title', 'ar') : @$service->title }}</h4></div>
                                        <div class="blg_desc"><p>{{ App::currentLocale() == 'ar' ? @$service->getTranslation('description', 'ar') : @$service->description }}</p></div>
                                    </div>

                                </div>
							</div>
						</div>


					</div>


				</div>

			</section>





                        <section class="theme-bg call_action_wrap-wrap">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">

							<div class="call_action_wrap">
								<div class="call_action_wrap-head">
									<h3>Do You Have Questions ?</h3>
									<span>We'll help you to grow your career and growth.</span>
								</div>
								<a href="#" class="btn btn-call_action_wrap">Contact Us Today</a>
							</div>

						</div>
					</div>
				</div>
			</section>



@endsection
@section('scripts')

@endsection
