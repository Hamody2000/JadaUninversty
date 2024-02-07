<!--
              <div class="hero_banner image-cover image_bottom">
    <div class="container">
     <div class="row align-items-center">
      <div class="col-lg-6 col-md-7 col-sm-12">
       <div class="simple-search-wrap text-left">
        <div class="hero_search-2">
         <h1 class="banner_title mb-4">About <span class="theme-cl">Jeddah  University </span></h1>
         <p class="">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique</p>

                                    <div class="inline_btn mt-3">
          <a href="#" class="btn theme-bg btn-md text-white">Read More</a>
         </div>
        </div>
       </div>
      </div>
      <div class="col-lg-6 col-md-5 col-sm-12">

                            <div class="side_block extream_img">
        <div class="list_crs_img">
         <img src="{{ url('frontend/assets/NewImages/img-1.png') }}" class="img-fluid elsio cirl animate-fl-y" alt="">
         <img src="{{ url('frontend/assets/NewImages/img-3.png') }}" class="img-fluid elsio arrow animate-fl-x" alt="">
         <img src="{{ url('frontend/assets/NewImages/img-2.png') }}" class="img-fluid elsio moon animate-fl-x" alt="">
        </div>
        <img src="{{ url('frontend/assets/NewImages/st-3.png') }}" class="img-fluid" alt="">
       </div>
      </div>
     </div>
    </div>
   </div>


    <section class="categories-area section-padding2 mt-0" id="ot_categories_area" @if (@$section->color) style="background:{{ @$section->color }}" @endif>
    </section>
 -->

<div class="hero_banner image-cover image_bottom">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-7 col-sm-12">
                <div class="simple-search-wrap text-left">
                    <div class="hero_search-2">
                        <h1 class="banner_title mb-4">{{ ___('frontend.About') }} <span
                                class="theme-cl">{{ ___('frontend.Jeddah University') }}</span></h1>
                        <p class="">{!! $data['about']->content ?? 'No Content Exists' !!}</p>

                        <div class="inline_btn mt-3">
                            <a style="border-radius: 35px;margin: 0 5px;" href="#" class="btn theme-bg btn-md text-white">{{ ___('frontend.Read More') }}</a>
                            <a style="border-radius: 35px;margin: 0 5px;" href="#" class="btn theme-bg btn-md text-white">{{ ___('frontend.Read More') }}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-5 col-sm-12">

				<div class="side_block extream_img">
					<div class="list_crs_img">
						<img src="{{ asset('frontend') }}/assets/NewImages/img-1.png" class="img-fluid elsio cirl animate-fl-y" alt="">
						<img src="{{ asset('frontend') }}/assets/NewImages/img-3.png" class="img-fluid elsio arrow animate-fl-x" alt="">
						<img src="{{ asset('frontend') }}/assets/NewImages/img-2.png" class="img-fluid elsio moon animate-fl-x" alt="">
					</div>
					<img src="{{ asset('frontend') }}/assets/NewImages/st-3.png" class="img-fluid" alt="">
				</div>
			</div>
		</div>
	</div>
</div>



<div class="JdadProgram section-bg-two">
    <div class="SectionTitle">
        <h2>Jada <span>Program</span></h2>
    </div>
    <div class="">
        <div class="brand-active swiper arrow-style">
            <div class="swiper-wrapper">
                <!-- Item -->
                <div class="swiper-slide">
                    <div class="ProgItem">
                        <div class="Icon">
                            <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                        </div>
                        <div class="Title">
                            <h2>Program Name</h2>
                        </div>
                        <div class="Description">
                            <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                        </div>
                    </div>
                </div>
                <!-- End Item -->
                 <!-- Item -->
                 <div class="swiper-slide">
                    <div class="ProgItem">
                        <div class="Icon">
                            <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                        </div>
                        <div class="Title">
                            <h2>Program Name</h2>
                        </div>
                        <div class="Description">
                            <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                        </div>
                    </div>
                </div>
                <!-- End Item -->
                 <!-- Item -->
                 <div class="swiper-slide">
                    <div class="ProgItem">
                        <div class="Icon">
                            <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                        </div>
                        <div class="Title">
                            <h2>Program Name</h2>
                        </div>
                        <div class="Description">
                            <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                        </div>
                    </div>
                </div>
                <!-- End Item -->
                 <!-- Item -->
                 <div class="swiper-slide">
                    <div class="ProgItem">
                        <div class="Icon">
                            <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                        </div>
                        <div class="Title">
                            <h2>Program Name</h2>
                        </div>
                        <div class="Description">
                            <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                        </div>
                    </div>
                </div>
                <!-- End Item -->
                 <!-- Item -->
                 <div class="swiper-slide">
                    <div class="ProgItem">
                        <div class="Icon">
                            <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                        </div>
                        <div class="Title">
                            <h2>Program Name</h2>
                        </div>
                        <div class="Description">
                            <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                        </div>
                    </div>
                </div>
                <!-- End Item -->
                 <!-- Item -->
                 <div class="swiper-slide">
                    <div class="ProgItem">
                        <div class="Icon">
                            <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                        </div>
                        <div class="Title">
                            <h2>Program Name</h2>
                        </div>
                        <div class="Description">
                            <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                        </div>
                    </div>
                </div>
                <!-- End Item -->

            </div>
            <div class="swiper-button-next swiper-btn">
                <i class="ri-arrow-right-line"></i>
            </div>
            <div class="swiper-button-prev swiper-btn">
                <i class="ri-arrow-left-line"></i>
            </div>
        </div>


        <div class="row" style="display:none">
            <div class="col_lg_5Item col-md-3 col-sm-6 col-xs-12">
                <div class="ProgItem">
                    <div class="Icon">
                        <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                    </div>
                    <div class="Title">
                        <h2>Program Name</h2>
                    </div>
                    <div class="Description">
                        <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                    </div>
                </div>
            </div>
            <div class="col_lg_5Item col-md-3 col-sm-6 col-xs-12">
                <div class="ProgItem">
                    <div class="Icon">
                        <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                    </div>
                    <div class="Title">
                        <h2>Program Name</h2>
                    </div>
                    <div class="Description">
                        <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                    </div>
                </div>
            </div>
            <div class="col_lg_5Item col-md-3 col-sm-6 col-xs-12">
                <div class="ProgItem">
                    <div class="Icon">
                        <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                    </div>
                    <div class="Title">
                        <h2>Program Name</h2>
                    </div>
                    <div class="Description">
                        <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="HadanetJada">
<div class="SectionTitle">
        <h2>Hadant <span>Jada</span></h2>
    </div>
    <div class="container">
        <div class="row">
        <div class=" col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="LeftSide4Item">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="HadanaItem">
                            <div class="Icon">
                                <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                            </div>
                            <div class="Title">
                                <h2>Program Name</h2>
                            </div>
                            <div class="Description">
                                <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="HadanaItem">
                            <div class="Icon">
                                <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                            </div>
                            <div class="Title">
                                <h2>Program Name</h2>
                            </div>
                            <div class="Description">
                                <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="HadanaItem">
                            <div class="Icon">
                                <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                            </div>
                            <div class="Title">
                                <h2>Program Name</h2>
                            </div>
                            <div class="Description">
                                <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="HadanaItem">
                            <div class="Icon">
                                <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                            </div>
                            <div class="Title">
                                <h2>Program Name</h2>
                            </div>
                            <div class="Description">
                                <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class=" col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="RightSideVideo">
                <div class="VideoIframe">
                    <iframe src="https://www.youtube.com/embed/83ewh6RstaE?si=wzHLXv8dhI0ltaEt" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>




<div class="JadaAim section-bg-two">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-12">
            <div class="section-tittle SectionTitle text-center mb-15">
                <h3 class="text-capitalize font-600">Jada Aim</h3>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="testimonial-active swiper arrow-style">
                <div class="swiper-wrapper">

                        <div class="swiper-slide">
                            <div class="single-testimonial h-calc mb-24 mt-20">
                                <div class="testimonial-caption imgEffect text-center radius-8">
                                    <div class="testimonial-founder">
                                        <div class="founder-img">
                                        <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                                        </div>
                                    </div>
                                    <div class="testimonialCap">
                                        <h2>Name</h2>
                                    </div>



                                    <div class="text-center">
                                        <div class="founder-text">
                                            <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="single-testimonial h-calc mb-24 mt-20">
                                <div class="testimonial-caption imgEffect text-center radius-8">
                                    <div class="testimonial-founder">
                                        <div class="founder-img">
                                        <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                                        </div>
                                    </div>
                                    <div class="testimonialCap">
                                        <h2>Name</h2>
                                    </div>



                                    <div class="text-center">
                                        <div class="founder-text">
                                            <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="single-testimonial h-calc mb-24 mt-20">
                                <div class="testimonial-caption imgEffect text-center radius-8">
                                    <div class="testimonial-founder">
                                        <div class="founder-img">
                                        <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                                        </div>
                                    </div>
                                    <div class="testimonialCap">
                                        <h2>Name</h2>
                                    </div>



                                    <div class="text-center">
                                        <div class="founder-text">
                                            <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="single-testimonial h-calc mb-24 mt-20">
                                <div class="testimonial-caption imgEffect text-center radius-8">
                                    <div class="testimonial-founder">
                                        <div class="founder-img">
                                        <img src="{{ asset('frontend') }}/assets/NewImages/image_7_2/1.svg">
                                        </div>
                                    </div>
                                    <div class="testimonialCap">
                                        <h2>Name</h2>
                                    </div>



                                    <div class="text-center">
                                        <div class="founder-text">
                                            <p>An intense 3-month accelerator designed to enable growth at speed An intense 3-month accelerator designed to enable growth at speed.</p>
                                        </div>
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
