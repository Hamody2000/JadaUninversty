@extends('panel.student.layouts.master')
@section('title', @$data['title'])
@section('content')
    <section>
        <div class="row">
            <!-- Section Tittle -->
            <div class="col-xl-12">
                <div class="section-tittle-two d-flex align-items-center justify-content-between flex-wrap mb-10">
                    <h2 class="title font-600 mb-20">{{ @$data['title'] }}</h2>
                </div>
            </div>
        </div>
        <!-- Report Table -->
        <div class="row">
            <div class="col-xxl-12 col-xl-12">
                <div class="mb-24">
                    <div class="activity-table">
                        <table class="table-responsive">
                            <thead>
                                {{ table_header('', $data['tableHeader']) }}
                            </thead>
                            <tbody>
                                @forelse (@$data['startups'] as $startup)
                                    <tr>
                                        <td>{{ @$startup->id }}</td>
                                        <td>{{ Str::limit(@$startup->title, 20) }}</td>
                                        <td>{{ Str::limit(@$startup->description, 30) }}</td>
                                        <td>
                                            <img width="100" src="{{ showImage(@$startup->image->original, 'default-1.jpeg') }}" alt="service image">
                                        </td>

                                        <td class="create-date">{{ showDate(@$startup->created_at) }}</td>

                                        <td class="action text-center">

                                            <a href="{{ route('student.startup.edit', $startup->id) }}">
                                                <span class="icon mr-12 text-center">
                                                    <i class="fas fa-edit text-primary fs-4"></i>
                                                </span>
                                            </a>

                                            <button type="button" class="btn btn-dropdown" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="fas fa-plus text-primary fs-4"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end">
                                                @if (hasPermission('startup_operations'))
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('startups.highlights.edit', $startup->id) }}"><span
                                                                class="icon mr-12"><i
                                                                    class="fa-solid fa-pen-to-square"></i></span>
                                                            {{ ___('startups.Highlights') }}</a>
                                                    </li>
                                                @endif

                                                @if (hasPermission('startup_operations'))
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('startups.problem.edit', $startup->id) }}"><span
                                                                class="icon mr-12"><i
                                                                    class="fa-solid fa-pen-to-square"></i></span>
                                                            {{ ___('startups.Problem') }}</a>
                                                    </li>
                                                @endif

                                                @if (hasPermission('startup_operations'))
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('startups.solution.edit', $startup->id) }}"><span
                                                                class="icon mr-12"><i
                                                                    class="fa-solid fa-pen-to-square"></i></span>
                                                            {{ ___('startups.Solution') }}</a>
                                                    </li>
                                                @endif

                                                @if (hasPermission('startup_operations'))
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('startups.howItWorks.edit', $startup->id) }}"><span
                                                                class="icon mr-12"><i
                                                                    class="fa-solid fa-pen-to-square"></i></span>
                                                            {{ ___('startups.How It Works') }}</a>
                                                    </li>
                                                @endif
                                                
                                                @if (hasPermission('startup_operations'))
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('startups.traction.edit', $startup->id) }}"><span
                                                                class="icon mr-12"><i
                                                                    class="fa-solid fa-pen-to-square"></i></span>
                                                            {{ ___('startups.Traction') }}</a>
                                                    </li>
                                                @endif

                                                @if (hasPermission('startup_operations'))
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('startups.impacts.index', $startup->id) }}"><span
                                                                class="icon mr-12"><i
                                                                    class="fa-solid fa-pen-to-square"></i></span>
                                                            {{ ___('startups.Impacts') }}</a>
                                                    </li>
                                                @endif

                                                @if (hasPermission('startup_operations'))
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('startups.partnerships.index', $startup->id) }}"><span
                                                                class="icon mr-12"><i
                                                                    class="fa-solid fa-pen-to-square"></i></span>
                                                            {{ ___('startups.Partnerships') }}</a>
                                                    </li>
                                                @endif

                                                @if (hasPermission('startup_operations'))
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('startups.teamMembers.index', $startup->id) }}"><span
                                                                class="icon mr-12"><i
                                                                    class="fa-solid fa-pen-to-square"></i></span>
                                                            {{ ___('startups.Team Members') }}</a>
                                                    </li>
                                                @endif

                                                @if (hasPermission('startup_operations'))
                                                    <li>
                                                        <a class="dropdown-item"
                                                            href="{{ route('startups.advisors.index', $startup->id) }}"><span
                                                                class="icon mr-12"><i
                                                                    class="fa-solid fa-pen-to-square"></i></span>
                                                            {{ ___('startups.Advisors') }}</a>
                                                    </li>
                                                @endif
                                            </ul>

                                        </td>
                                    </tr>

                                @empty
                                    <tr>
                                        <td colspan="4" class="text-center">
                                            {{-- No Data Found --}}
                                            <div class="row justify-content-center">
                                                <div class="col-lg-3 col-md-6 col-sm-6">
                                                    <div class="not-data-found table-img text-center pt-50 pb-10">
                                                        <img src="{{ @showImage(setting('empty_table'), 'backend/assets/images/no-data.png') }}"
                                                            alt="img" class="w-100 mb-20 w-25">
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                @endforelse

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--  pagination start -->
    {!! @$data['startups']->links('frontend.partials.pagination-count') !!}
    <!--  pagination end -->


@endsection