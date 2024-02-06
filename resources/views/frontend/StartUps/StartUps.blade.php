@extends('frontend.layouts.master')
@section('title', @$data['title'])
@section('content')

<div class="ot-bradcam-area footer-bg">
    <div class="container">
        <div class="ot-bradcam-inner">
            <div class="row">
                <div class="col-xl-12">
                    <div class="ot-bradcam-inner-wrapper">
                        <div class="bradcam-text d-flex justify-content-between">
                            <h3 class="title font-700 text-white">{{ ___('startups.Title') }}</h3>

                            <a href="{{ route('frontend.startups.signup') }}" class="btn btn_view_detail theme-bg">{{ ___('frontend.Register As A Startup') }}</a>
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
								<h2><span class="theme-cl">{{ ___('frontend.Startups') }}</span></h2>
								<p>{{ ___('frontend.Startups Text') }}</p>
							</div>
						</div>
					</div>

					<div class="row justify-content-center">

						@foreach($data['startups'] as $startup)
                            <!-- Single Grid -->
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                                <div class="crs_grid">
                                    <div class="crs_grid_thumb">
                                        <a href="{{ route('frontend.startups-details', @$startup->id) }}" class="crs_detail_link">
                                            <img src="{{ $startup->image ? asset('storage/' . $startup->image->original) : url('frontend/assets/NewImages/cr-3.jpg') }}" class="img-fluid rounded" alt="" />
                                        </a>
                                    </div>
                                    <div class="crs_grid_caption">
                                        <div class="crs_title">
                                            <a href="{{ route('frontend.startups-details', @$startup->id) }}" class="crs_title_link">
                                                <h4>
                                                    {{ App::currentLocale() == 'ar' ? Str::limit(@$startup->getTranslation('title', 'ar'), 30) : Str::limit(@$startup->title, 30) }}
                                                </h4>
                                            </a>
                                        </div>
                                        <div class="ShortDescription">
                                            <p> {{ App::currentLocale() == 'ar' ? Str::limit(@$startup->getTranslation('description', 'ar'), 50) : Str::limit(@$startup->description, 50) }} </p>
                                        </div>


                                    </div>
                                    <div class="crs_grid_foot">
                                        <div class="crs_flex">

                                            <div class="crs_fl_last">
                                                <div class="crs_linkview">
                                                    <a href="{{ route('frontend.startups-details', @$startup->id) }}" class="btn btn_view_detail theme-bg">{{ ___('frontend.Read More') }}</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
						@endforeach

                        <!--<div class="col-xl-12 col-lg-12 col-md-12">
                            <nav class="float-none">
                                 <ul class="pagination_two ">
                                    <li class="page-item ">
                                      <a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item active">
                                      <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                      <a class="page-link" href="#"><i class="fas fa-angle-right"></i></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>-->

                        <div class="col-xl-12 col-lg-12 col-md-12">
                                <nav class="float-none">
                                    <ul class="pagination_two">
                                        {{-- Previous Page Link --}}
                                        @if ($data['startups']->onFirstPage())
                                            <li class="page-item disabled">
                                                <span class="page-link"><i class="fas fa-angle-left"></i></span>
                                            </li>
                                        @else
                                            <li class="page-item">
                                                <a class="page-link" href="{{ $data['startups']->previousPageUrl() }}" rel="prev"><i class="fas fa-angle-left"></i></a>
                                            </li>
                                        @endif

                                        {{-- Pagination Elements --}}
                                        @if ($data['startups']->hasPages())
                                            @for ($page = 1; $page <= $data['startups']->lastPage(); $page++)
                                                @if ($page == $data['startups']->currentPage())
                                                    <li class="page-item active"><span class="page-link">{{ $page }} <span class="sr-only">(current)</span></span></li>
                                                @else
                                                    <li class="page-item"><a class="page-link" href="{{ $data['startups']->url($page) }}">{{ $page }}</a></li>
                                                @endif
                                            @endfor
                                        @endif

                                        {{-- Next Page Link --}}
                                        @if ($data['startups']->hasMorePages())
                                            <li class="page-item">
                                                <a class="page-link" href="{{ $data['startups']->nextPageUrl() }}" rel="next"><i class="fas fa-angle-right"></i></a>
                                            </li>
                                        @else
                                            <li class="page-item disabled">
                                                <span class="page-link"><i class="fas fa-angle-right"></i></span>
                                            </li>
                                        @endif
                                    </ul>
                                </nav>
                            </div>

                    </div>

				</div>
			</section>







@endsection
@section('scripts')

@endsection
