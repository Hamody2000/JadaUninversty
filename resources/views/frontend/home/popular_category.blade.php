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
                            <a href="#" class="btn theme-bg btn-md text-white">{{ ___('frontend.Read More') }}</a>
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
