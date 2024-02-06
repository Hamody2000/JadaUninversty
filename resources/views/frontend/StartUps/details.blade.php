
@extends('frontend.layouts.master')
@section('title', @$data['title'])
@section('content')


<div class="search-popup popuphtml">


	<div class="popup-inner">


    <div class="banner-section">

        <div id="searchheader" class="banner-carousel  ">

            <div class="slide-item" style="background-image: url({{ $data['startup']->image ? asset('storage/' . $data['startup']->image->original) : url('frontend/assets/NewImages/cr-3.jpg') }})">

                <div class="auto-container">

                    <div class="content-box">



                        <div class="istenmContent">


                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="titilws">
                                        <h2 class="TitH2">{{ App::currentLocale() == 'ar' ? $data['startup']->getTranslation('title', 'ar') : $data['startup']->getTranslation('title', 'en') }}</h2>


                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="twop">
                                        <p>{{ App::currentLocale() == 'ar' ? $data['startup']->getTranslation('description', 'ar') : $data['startup']->getTranslation('description', 'en') }}</p>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="undertitle">
                                        <div class="row" style="justify-content: space-between;">
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                <div class="lilinksfeatch">
                                                    <ul>
                                                        <li><a href="#">{{ App::currentLocale() == 'ar' ? $data['startup']->getTranslation('industry', 'ar') : $data['startup']->getTranslation('industry', 'en') }}</a></li>
                                                        <li><a href="#">{{ ___('frontend.Startups') }}</a></li>
                                                    </ul>
                                                </div>
                                            </div>


                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                <div class="imglinli">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <img src="{{ asset('frontend/assets/images/Img_Crowed/pasticon.png') }}">
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <img src="{{ asset('frontend/assets/images/Img_Crowed/E_SDGicons8.png') }}">
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <img src="{{ asset('frontend/assets/images/Img_Crowed/pastedicon.png') }}">
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <!-- Meet Our Team -->
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                <div class="meatteam">
                                                    <a class="clink">{{ ___('startups.Meat the team') }}</a>
                                                    <ul>
                                                        <li>
                                                            <a>
                                                                <img src="{{ asset('frontend/assets/images/Img_Crowed/team1.png') }}">
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a>
                                                                <img src="{{ asset('frontend/assets/images/Img_Crowed/team2.png') }}">
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a>
                                                                <img src="{{ asset('frontend/assets/images/Img_Crowed/tam3.png') }}">
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="progrssess">
                                                    <div class="progpar">
                                                        <p style="width: 65%;">
                                                            <span>65%</span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div> -->

                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">



                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>




    <div class="HightLites">
        <div class="container-fluid">
            <div class="Hight_Content">


                        <div class="title">
                            <h2>{{ ___('startups.HightLights') }}</h2>
                            <div class="line"></div>
                        </div>


                 <div class="Statistics">
                <div class="row">
                    <div class="col-lg-2 col-md-3 col-sm-6 col-xs-12">
                        <div class="item_content  animated fadeInUp">

                            <p class="Pararg">

                                <span class="counter">36</span>
                                <span class="Signature">%</span>
                            </p>
                            <h3>Profit margin</h3>
                        </div>

                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="item_content  animated fadeInUp">

                            <p class="Pararg">
                                <span class="Icon"><i class="fas fa-dollar-sign"></i></span>
                                <span class="counter">6000</span>
                                <span class="Signature">K</span>
                            </p>
                            <h3>Sales pipeline  </h3>
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-3 col-sm-6 col-xs-12">
                        <div class="item_content  animated fadeInUp">

                            <p class="Pararg">

                                <span class="counter">100</span>
                                <span class="Signature">%</span>
                            </p>
                            <h3>Complaince with European Standards</h3>
                        </div>

                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="item_content  animated fadeInUp">

                            <p class="Pararg">

                                <span class="counter">30,000</span>
                                <span class="Signature">+</span>
                            </p>
                            <h3>Trees Saved</h3>
                        </div>

                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-6 col-xs-12">
                        <div class="item_content  animated fadeInUp">

                            <p class="Pararg">
                               <span class="Icon"><i class="fas fa-dollar-sign"></i></span>
                                <span class="counter">2</span>
                                <span class="Signature">BN</span>
                            </p>
                            <h3>Market Size</h3>
                        </div>

                    </div>
                </div>

                <div class="clearfix"> </div>
            </div>
            </div>
        </div>





    </div>


        <div class="peatchvedio">
            <div class="title">
                            <h2>PITCH VIDEO</h2>
                            <div class="line"></div>
                        </div>
            <div class="container">
                <div class="peatchvedioContent">
                    <iframe src="https://www.youtube.com/embed/BHACKCNDMW8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>

        </div>

        <div class="prplemm">
             <div class="title">
                            <h2>problem</h2>
                            <div class="line"></div>
                        </div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="imgs">
                        <img src="{{ asset('frontend/assets/images/Img_Crowed/prblem%20(1).png') }}">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="details">
                        <div class="detaislConte">
                            <h2>Challeng of the world</h2>
                            <div class="line"></div>
                            <p>Deforestation and GHG from burning agro waste are the second leading causes of climate change since 2 Billion trees are cut down annually to supply wood. it is becoming quite the challenge for manufacturers to secure affordable wood without severely damaging the environment.</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <div class="solution">
             <div class="title">
                <h2>solution</h2>
                <div class="line"></div>
            </div>
            <div class="container">
                <div class="solutionContent">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="solutionDetails">
                                <div class="SolCOntet">
                                    <h2>Wood without Cutting Trees</h2>
                                    <div class="line"></div>
                                    <p>Deforestation and GHG from burning agro waste are the second leading causes of climate change since 2 Billion trees are cut down annually to supply wood. it is becoming quite the challenge for manufacturers to secure affordable wood without severely damaging the environment.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="slouimg">
                                <img src="{{ asset('frontend/assets/images/Img_Crowed/solution1.png') }}" class="imgeone">
                                <img src="{{ asset('frontend/assets/images/Img_Crowed/solution2.png') }}" class="imgetwo">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


               <div class="howitwork">
             <div class="title">
                <h2>how it works</h2>
                <div class="line"></div>
            </div>
            <div class="container">
                <div class="solutionContent">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="solutionDetails">
                                <div class="SolCOntet">

                                    <p>Deforestation and GHG from burning agro waste are the second leading causes of climate change since 2 Billion trees are cut down annually to supply wood. it is becoming quite the challenge for manufacturers to secure affordable wood without severely damaging the environment.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="slouimg">

                                <img src="{{ asset('frontend/assets/images/Img_Crowed/howtowork1.png') }}" class="imgeone">
                                <img src="{{ asset('frontend/assets/images/Img_Crowed/howowork2.png') }}" class="imgetwo">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="impact">
            <div class="title">
                <h2>impact</h2>
                <div class="line"></div>
            </div>
            <div class="container">
                <div class="impactPp">
                    <p>A GRONA has direct impact on 4 of the SDG Goals</p>
                </div>
                <div class="impactcont">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="impactimgr">
                                <img src="{{ asset('frontend/assets/images/Img_Crowed/impact1.png') }}">
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="impactimgr">
                                <img src="{{ asset('frontend/assets/images/Img_Crowed/impact2.png') }}">
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="impactimgr">
                                <img src="{{ asset('frontend/assets/images/Img_Crowed/impact3.png') }}">
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="impactimgr">
                                <img src="{{ asset('frontend/assets/images/Img_Crowed/impact4.png') }}">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <!-- <div class="marketsize">
            <div class="title">
                <h2>market size</h2>
                <div class="line"></div>
            </div>
            <div class="container">
                <div class="marketsizeContent">
                    <div class="marketimg">
                        <img src="{{ asset('frontend/assets/images/Img_Crowed/market%20size.png') }}">
                    </div>
                </div>
            </div>

        </div> -->

            <div class="trasction">
        <div class="container">
            <div class="Hight_Content">


                        <div class="title">
                            <h2>traction</h2>
                            <div class="line"></div>
                        </div>


                 <div class="Statistics">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="item_content  animated fadeInUp">

                            <p class="Pararg">
                             <span class="Icon"><i class="fas fa-dollar-sign"></i></span>
                                <span class="counter">30</span>
                                <span class="Signature">K</span>
                            </p>
                            <h3>Revenues</h3>
                        </div>

                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="item_content  animated fadeInUp">

                            <p class="Pararg">

                                <span class="counter">3,500</span>
                                <span class="Signature">+</span>
                            </p>
                            <h3>Boards Produced</h3>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="item_content  animated fadeInUp">

                            <p class="Pararg">

                                <span class="counter">15</span>
                                <span class="Signature">+</span>
                            </p>
                            <h3>Current Customers</h3>
                        </div>

                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="item_content  animated fadeInUp">

                            <p class="Pararg">

                                <span class="counter">475</span>
                                <span class="Signature">+</span>
                            </p>
                            <h3>Trees Saved</h3>
                        </div>

                    </div>

                </div>

                <div class="clearfix"> </div>
            </div>
            </div>
        </div>





    </div>

                <div class="partners">
                    <div class="title">
                        <h2>partnerships & Achievements </h2>
                        <div class="line"></div>
                    </div>
                    <div class="container">
                        <div class="partnersContent">
                            <div class="row">
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/Picture1.png') }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/Picture2.jpg') }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/Picture3.jpg') }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/Picture4.png') }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/Picture5.jpg') }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/10.png') }}">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <ul class="partitemsss">
                                <li class="itempartrt">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/Picture1.png') }}">
                                        </div>
                                    </div>
                                </li>
                                <li class="itempartrt">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/Picture1.png') }}">
                                        </div>
                                    </div>
                                </li>
                                <li class="itempartrt">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/Picture1.png') }}">
                                        </div>
                                    </div>
                                </li>
                                <li class="itempartrt">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/Picture1.png') }}">
                                        </div>
                                    </div>
                                </li>
                                <li class="itempartrt">
                                    <div class="partnerItem">
                                        <div class="img">
                                            <img src="{{ asset('frontend/assets/images/Img_Crowed/Picture1.png') }}">
                                        </div>
                                    </div>
                                </li>
                            </ul>

                        </div>
                    </div>

                </div>


                <!-- <div class="rooadmap">
                    <div class="title">
                        <h2>roadmap</h2>
                        <div class="line"></div>
                    </div>
                    <div class="container">
                        <div class="marketsizeContent">
                            <div class="roadmapimg">
                                <img src="{{ asset('frontend/assets/images/Img_Crowed/roadmap.png') }}">
                            </div>
                        </div>
                    </div>

                </div> -->




                <div class="taem">
                    <div class="title">
                        <h2>taem</h2>
                        <div class="line"></div>
                    </div>
                    <div class="container">
                        <div class="taemContent">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="teamitem">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="ifotem">
                                                    <div class="imges">
                                                        <img src="{{ asset('frontend/assets/images/Img_Crowed/teaata1.png') }}">
                                                    </div>
                                                    <div class="diet">
                                                        <h2 class="name">hisham ahmed</h2>
                                                        <p>founder & CEO</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                <div class="paragraphteam">
                                                    <p>Agrona ia reinventing the wood industry by creating particles boards from agro-residues without cutting asingel tree. </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="teamitem">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="ifotem">
                                                    <div class="imges">
                                                        <img src="{{ asset('frontend/assets/images/Img_Crowed/teaata2.png') }}">
                                                    </div>
                                                    <div class="diet">
                                                        <h2 class="name">mohamed kafafy</h2>
                                                        <p>founder & CEO</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                <div class="paragraphteam">
                                                    <p>Agrona ia reinventing the wood industry by creating particles boards from agro-residues without cutting asingel tree. </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="teamitem">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="ifotem">
                                                    <div class="imges">
                                                        <img src="{{ asset('frontend/assets/images/Img_Crowed/tam3.png') }}">
                                                    </div>
                                                    <div class="diet">
                                                        <h2 class="name">ismail jamal</h2>
                                                        <p>founder & CEO</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                <div class="paragraphteam">
                                                    <p>Agrona ia reinventing the wood industry by creating particles boards from agro-residues without cutting asingel tree. </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>

                      <div class="Advisors">
                    <div class="title">
                        <h2>Advisors</h2>
                        <div class="line"></div>
                    </div>
                    <div class="container">
                        <div class="taemContent">
                            <div class="row">

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="teamitem">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="ifotem">
                                                    <div class="imges">
                                                        <img src="{{ asset('frontend/assets/images/Img_Crowed/advert1.jpg') }}">
                                                    </div>
                                                    <div class="diet">
                                                        <h2 class="name">inji borai</h2>
                                                        <p>founder & CEO</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                <div class="paragraphteam">
                                                    <p>Agrona ia reinventing the wood industry by creating particles boards from agro-residues without cutting asingel tree. </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="teamitem">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="ifotem">
                                                    <div class="imges">
                                                        <img src="{{ asset('frontend/assets/images/Img_Crowed/advert2.jpg') }}">
                                                    </div>
                                                    <div class="diet">
                                                        <h2 class="name">munad emam</h2>
                                                        <p>founder & CEO</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                                <div class="paragraphteam">
                                                    <p>Agrona ia reinventing the wood industry by creating particles boards from agro-residues without cutting asingel tree. Aglobal trend toward affordable furniture coupled and going green coupled with an plummeting purchasing power pave the way for amore economic environmentlly-friendly alternative.

Agrona ia reinventing the wood industry by creating particles boards from agro-residues without cutting asingel tree. Aglobal trend toward affordable furniture coupled and going green coupled with an plummeting purchasing power pave the way for amore economic environmentlly-friendly alternative.


 </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>








    </div>

</div>


@endsection
@section('scripts')

@endsection
