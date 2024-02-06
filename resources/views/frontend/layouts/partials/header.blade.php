<body class="light-mode {{ @findDirectionOfLang() }}" dir="{{ @findDirectionOfLang() }}">
    <header>
        <div class="header-area header-sticky">
            <div class="main-header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="menu-wrapper d-flex align-items-center justify-content-between">

                                <div class="logo  d-sm-block LightLogo">
                                    {{ lightLogo() }}
                                </div>
                                <div class="logo  d-sm-block DarkLogo">
                                    {{ darkLogo() }}
                                </div>

                                <div class="main-menu d-none d-lg-block">
                                    <nav>
                                        <ul class="listing" id="navigation">
                                            <li class="single-list">
                                                <form action="{{ route('frontend.search') }}" class="header-search">
                                                    <div class="input-form">
                                                        <input type="text" name="query"
                                                            placeholder="{{ ___('frontend.Search') }} ..."
                                                            value="{{ @$_GET['query'] }}">
                                                        <div class="icon">
                                                            <i class="ri-search-line"></i>
                                                        </div>
                                                    </div>
                                                </form>
                                            </li>
                                            <li class="single-list active">
                                                <a href="{{ route('home') }}"
                                                    class="single">{{ ___('frontend.Home') }}</a>
                                            </li>
                                            <li class="single-list">
                                                <a href="javascript:;"
                                                    class="single menu-categories">{{ ___('frontend.Categories') }}</a>
                                            </li>

                                            <li class="single-list">
                                                <a href="{{ route('frontend.instructor') }}"
                                                    class="single">{{ ___('frontend.Instructors') }}</a>
                                            </li>

                                            <li class="single-list">
                                                <a href="{{ route('frontend.about') }}"
                                                    class="single">{{ ___('frontend.About') }}</a>
                                            </li>

                                            <li class="single-list">
                                                <a href="{{ route('frontend.contact_us') }}"
                                                    class="single">{{ ___('frontend.Contact') }}</a>
                                            </li>



                                            <li class="single-list">
                                                <a href="{{ route('frontend.services') }}"
                                                    class="single">{{ ___('frontend.Services') }}</a>
                                            </li>

                                            <li class="single-list">
                                                <a href="{{ route('frontend.startups') }}"
                                                    class="single">{{ ___('frontend.Startups') }}</a>
                                            </li>

                                        </ul>
                                    </nav>
                                </div>

                                <ul class="cart">

                                    <li class="cart-list">
                                        <button class="single change-mode m-0 p-2 border-0">
                                            <i class="ri-sun-line"></i>
                                        </button>
                                    </li>

                                    <li class="cart-list">
                                        <select class="language-select select_2" id="language-select">
                                            @foreach (language() as $language)
                                                <option value="{{ $language->code }}"
                                                    {{ $language->code == session()->get('locale') ? 'selected' : '' }}>
                                                    {{ $language->name }}</option>
                                            @endforeach

                                        </select>
                                    </li>




                                    @auth
                                        @if (auth()->user()->role_id == App\Enums\Role::STUDENT)
                                            @include('panel.student.include.profile_menu')
                                        @elseif (auth()->user()->role_id == App\Enums\Role::INSTRUCTOR)
                                            @include('panel.instructor.include.profile_menu')
                                        @elseif (module('Organization') && auth()->user()->role_id == App\Enums\Role::ORGANIZATION)
                                            @include('organization::panel.organization.include.profile_menu')
                                        @else
                                            @include('panel.instructor.include.admin_profile_menu')
                                        @endif

                                    @endauth

                                    @guest

                                        <li class="cart-list">
                                            <a href="{{ route('frontend.signIn') }}" class="btn-primary-fill ml-20">
                                                {{ ___('frontend.Sign In') }}
                                            </a>
                                        </li>
                                    @endguest
                                </ul>

                            </div>

                            <div class="div">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        @include('frontend.include.mobile_footer_menu')

    </header>
