@extends('panel.instructor.layouts.master')

@section('title', @$data['title'])
@section('content')

    <!-- Dashboard Card S t a r t -->
    <div class="dashboared-card mb-24">
        <div class="row g-24">
            <div class="col-xl-3 col-sm-6">
                <div class="single-dashboard-card carts-bg-one h-calc d-flex align-items-center">
                    <div class="icon">
                        <!-- <i class="ri-line-chart-line"></i> -->
                        <i class="ri-edit-box-line"></i>
                    </div>
                    <div class="cat-caption">
                        <!-- <p class="pera text-white font-600">{{ ___('instructor.Total Earnings') }}</p> -->
                        <p class="pera text-white font-600">{{ ___('instructor.Total Quizzes') }}</p>
                        <!-- Counter -->
                        <div class="single-counter mb-15">
                            <p class="currency">
                                <!-- {{ getCurrencySymbol() }}
                                {{ shorten_number(@$data['instructor']->earnings ?? 0) }} -->
                                {{shorten_number(@$totalQuizzes ? @$totalQuizzes : 0)}}
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-sm-6">
                <div class="single-dashboard-card carts-bg-two h-calc d-flex align-items-center">
                    <div class="icon">
                        <i class="ri-book-open-line"></i>
                    </div>
                    <div class="cat-caption">
                        <p class="pera text-white text-16 font-600">{{ ___('instructor.Total Courses') }}</p>
                        <!-- Counter -->
                        <div class="single-counter mb-15">
                            <p class="currency">
                                {{ shorten_number(@$data['instructor']->user->courses ? @$data['instructor']->user->courses->count() : 0) }}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6">
                <div class="single-dashboard-card carts-bg-three h-calc d-flex align-items-center">
                    <div class="icon">
                        <i class="ri-movie-line"></i>
                    </div>
                    <div class="cat-caption">
                        <p class="pera text-white text-16 font-600">{{ ___('instructor.Total Enrollments') }} </p>
                        <!-- Counter -->
                        <div class="single-counter mb-15">
                            <p class="currency">
                                {{ shorten_number(@$data['instructor']->user->courseEnroll ? @$data['instructor']->user->courseEnroll->count() : 0) }}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6">
                <div class="single-dashboard-card carts-bg-four h-calc d-flex align-items-center">
                    <div class="icon">
                        <i class="ri-user-add-line"></i>
                    </div>
                    <div class="cat-caption">
                        <p class="pera text-white text-16 font-600">{{ ___('instructor.Total Students') }}</p>
                        <!-- Counter -->
                        <div class="single-counter mb-15">
                            <p class="currency">
                                {{ shorten_number(@$data['instructor']->user->courseEnroll ? @$data['instructor']->user->courseEnroll->groupBy('user_id')->count() : 0) }}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End-of card -->

    <!-- Activity Progress S t a r t -->
    <section class="activity-progress">
        <div class="row">



            <div class="col-xl-12">
                <div class="ot-card mb-24">
                    <div class="section-tittle-two mb-10 d-flex align-items-center justify-content-between flex-wrap">
                        <h2 class="title font-600">{{ ___('course.Reviews & Feedback') }}</h2>
                        <a href="{{ route('instructor.course_reviews') }}"
                            class="browse-btn mt-6">{{ ___('instructor.See All') }}</a>
                    </div>
                    <div class="activity-table">
                        <table class="table-responsive">
                            <thead>
                                <tr>
                                    <th>{{ ___('course.Course') }}</th>
                                    <th>{{ ___('common.Student') }}</th>
                                    <th>{{ ___('course.Reviews') }}</th>
                                    <th>{{ ___('course.Rating') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($data['reviews'] as $review)
                                    <tr>
                                        <td>
                                            {{ Str::limit($review->course->title, 30) }}
                                        </td>
                                        <td>
                                            {{ @$review->course->user->name }}
                                        </td>
                                        <td>
                                            <?= Str::limit($review->comment, 100) ?>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center gap-5">
                                                <span class="text-primary text-12 font-500 ">{{ @$review->rating }}</span>
                                                <div class="d-flex align-items-center gap-2">
                                                    {{ rating_ui(@$review->rating, 16) }}
                                                </div>
                                            </div>

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
    <!-- End-of Activity Progress -->
@endsection
@section('scripts')
@endsection
