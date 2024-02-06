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

            <div class="col-lg-12">
                <div class="btn-wrapper mt-6">
                    <button
                        class="btn-primary-fill"
                        data-url=""
                        role="button" class="btn-add main-modal-open" 
                        
                        data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                    >
                    {{--
                        data-bs-toggle="tooltip"
                        data-bs-placement="top" data-bs-title="{{ ___('course.Add') }}"    
                    --}}
                        {{ ___('common.add') }}
                    </button>
                </div>
            </div>

            <div class="modal fade lead-modal" id="staticBackdrop" data-bs-backdrop="static" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content data">
                        <div class="modal-header modal-header-image mb-3" dir="ltr">
                            <h5 class="modal-title">{{ @$data['title'] }} </h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <i class="las la-times" aria-hidden="true"></i>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="{{ route('startups.teamMembers.add', @$data['startup_id']) }}" method="post" id="modal_values" enctype="multipart/form-data">
                                @csrf
                                <div class="row mb-3 d-flex justify-content-center">
                                    <div class="col-xl-12 mb-3">


                                        <!-- Start Ar, En inputs for Startup Member Name -->
                                        <div class="col-12 mb-3">
                                            <label for="name" class="form-label ">{{ ___('startups.Startup Member Name') }} <span
                                                    class="fillable">*</span></label>
                                            <input class="form-control ot-input @error('name') is-invalid @enderror" name="name"
                                                    list="datalistOptions" id="name" value="{{ old('name') }}"
                                                    placeholder="{{ ___('startups.Enter Startup Member Name') }}">
                                            @error('name')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>

                                        <div class="col-12 mb-3">
                                            <label for="name_ar" class="form-label ">{{ ___('startups.Startup Arabic Member Name') }} <span
                                                    class="fillable">*</span></label>
                                            <input class="form-control ot-input @error('name_ar') is-invalid @enderror" name="name_ar"
                                                    list="datalistOptions" id="name_ar" value="{{ old('name_ar') }}"
                                                    placeholder="{{ ___('startups.Enter Startup Member Name In Arabic') }}">
                                            @error('name_ar')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>
                                        <!-- End Ar, En inputs for Startup Member Name -->

                                        <!-- Start Ar, En inputs for Startup Member Role -->
                                        <div class="col-12 mb-3">
                                            <label for="role" class="form-label ">{{ ___('startups.Startup Member Role') }} <span
                                                    class="fillable">*</span></label>
                                            <input class="form-control ot-input @error('role') is-invalid @enderror" name="role"
                                                    list="datalistOptions" id="role" value="{{ old('role') }}"
                                                    placeholder="{{ ___('startups.Enter Startup Member Role') }}">
                                            @error('role')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>

                                        <div class="col-12 mb-3">
                                            <label for="role_ar" class="form-label ">{{ ___('startups.Startup Arabic Member Role') }} <span
                                                    class="fillable">*</span></label>
                                            <input class="form-control ot-input @error('role_ar') is-invalid @enderror" name="role_ar"
                                                    list="datalistOptions" id="role_ar" value="{{ old('role_ar') }}"
                                                    placeholder="{{ ___('startups.Enter Startup Member Role In Arabic') }}">
                                            @error('role_ar')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>
                                        <!-- End Ar, En inputs for Startup Member Role -->

                                        <!-- Start Ar, En inputs for Startup Member Description -->
                                        <div class="col-12 mb-3">
                                            <label for="description" class="form-label">{{ ___('startups.Member Description') }} <span
                                                    class="fillable">*</span></label>
                                            <textarea
                                                name="description"
                                                id="description"
                                                class="form-control ot-textarea  @error('description') is-invalid @enderror"
                                                placeholder="{{ ___('startups.Enter Startup Member Description') }}"
                                            >{{ old('description') }}</textarea>
                                            @error('description')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>

                                        <div class="col-12 mb-3">
                                            <label for="description_ar" class="form-label">{{ ___('startups.Arabic Member Description') }} <span
                                                    class="fillable">*</span></label>
                                            <textarea
                                                name="description_ar"
                                                id="description_ar"
                                                class="form-control ot-textarea  @error('description_ar') is-invalid @enderror"
                                                placeholder="{{ ___('startups.Enter Startup Member Description In Arabic') }}"
                                            >{{ old('description_ar') }}</textarea>
                                            @error('description_ar')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>
                                        <!-- End Ar, En inputs for Startup Member Description -->

                                        <!-- Start Startup Impact Image -->
                                        <div class="col-12 mb-3">
                                            <label for="designation" class="form-label ">
                                                {{ ___('startups.Impact Image') }}
                                            </label>
                                            <div data-val=""
                                                    data-name="image" class="file @error('image') is-invalid @enderror"
                                                    data-height="200px ">
                                            </div>
                                            <small
                                                class="text-muted">{{ ___('placeholder.NB : The image size will 100px x 100px and not more than 1mb') }}</small>
                                            @error('image')
                                            <div id="validationServer04Feedback" class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>
                                        <!-- End Startup Impact Image -->

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group d-flex justify-content-end">
                                            <button type="submit"
                                                class="btn btn-primary">{{ ___('common.add') }}</button>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xxl-12 col-xl-12">
                <div class="mb-24">
                    <div class="activity-table">
                        <table class="table-responsive">
                            <thead>
                                {{ table_header('', $data['tableHeader']) }}
                            </thead>
                            <tbody>
                                @forelse (@$data['teamMembers'] as $member)
                                    <tr>
                                        <td>{{ @$member->id }}</td>
                                        <td>{{ App::currentLocale() == 'en' ? @$member->getTranslation('name', 'en') : @$member->getTranslation('name', 'ar') }}</td>
                                        <td>{{ App::currentLocale() == 'en' ? @$member->getTranslation('role', 'en') : @$member->getTranslation('role', 'ar') }}</td>
                                        <td>{{ App::currentLocale() == 'en' ? @$member->getTranslation('description', 'en') : @$member->getTranslation('description', 'ar') }}</td>
                                        <td>
                                            <img width="100" src="{{ showImage(@$member->image->original, 'default-1.jpeg') }}" alt="service image">
                                        </td>
                                        <td class="create-date">{{ showDate(@$member->created_at) }}</td>

                                        <td class="action text-center">
                                            <a href="#" data-bs-toggle="modal" data-bs-target="#staticBackdrop-{{ $member->id }}">
                                                <span class="icon mr-12 text-center">
                                                    <i class="fas fa-trash text-danger fs-4"></i>
                                                </span>
                                            </a>

                                            <div class="modal fade lead-modal" id="staticBackdrop-{{ $member->id }}" data-bs-backdrop="static" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered modal-lg">
                                                    <div class="modal-content data">
                                                        <div class="modal-header modal-header-image mb-3" dir="ltr">
                                                            <h5 class="modal-title">{{ ___('startups.Delete Startup Impact !') }} </h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                                <i class="las la-times" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form action="{{ route('startups.teamMember.delete', [@$data['startup_id'], $member->id]) }}" method="post" enctype="multipart/form-data">
                                                                @csrf
                                                                @method('DELETE')
                                                                <div class="row mb-3 d-flex justify-content-center">
                                                                    <div class="col-xl-12 col-md-6 mb-3">
                                                                        <h3 class="text-warning">
                                                                        {{ ___('startups.Are you sure to delete the member?') }}
                                                                        </h3>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        <div class="form-group d-flex justify-content-end">
                                                                            <button type="submit"
                                                                                class="btn btn-danger">{{ ___('common.delete') }}</button>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                @empty
                                    <tr>
                                        <td colspan="7" class="text-center">
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

    <!-- <script src="{{ asset('backend/assets/js/modal/__modal.min.js') }}"></script> -->

    <!--  pagination start -->
    {!! @$data['teamMembers']->links('frontend.partials.pagination-count') !!}
    <!--  pagination end -->


@endsection