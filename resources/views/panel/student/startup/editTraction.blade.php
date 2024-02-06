@extends('panel.student.layouts.master')
@section('title', @$data['title'])

@section('css')
    <!-- Custom CSS  start -->
    <link rel="stylesheet" href="{{ asset('backend') }}/assets/css/style.css">
@endsection

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

                    <!-- Form with multiStep S t a r t-->
                    <div class="form-with-multistep section-padding ot-card overflow-hidden">
                        <div class="container-fluid">
                            <div class="row justify-content-center">

                            

                                <div class="col-sm-12">
                                    <div class="multiStep-wrapper">
                                        <form action="{{ route('startups.traction.update', $data['startup']->id) }}" enctype="multipart/form-data" method="post" id="visitForm">
                                            @csrf
                                            @method('PUT')
                                            <div class="multiStep-wrapper-flex">
                                                <!-- Start startup info -->
                                                <div class="multiStep-wrapper-contents step1 active">
                                                    <div class="mb-24 border-0 pt-0">
                                                        <div class="row">

                                                            <!-- Start Trees Saved -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="trees_saved" class="form-label ">{{ ___('startups.Trees Saved') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input type="number" class="form-control ot-input @error('trees_saved') is-invalid @enderror" name="trees_saved"
                                                                    list="datalistOptions" id="trees_saved" value="{{ @$data['startup']->traction->trees_saved ?? old('trees_saved') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup Trees Saved') }}">
                                                                @error('trees_saved')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Trees Saved -->

                                                            <!-- Start Current Customers -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="current_customers" class="form-label ">{{ ___('startups.Current Customers') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input type="number" class="form-control ot-input @error('current_customers') is-invalid @enderror" name="current_customers"
                                                                    list="datalistOptions" id="current_customers" value="{{ @$data['startup']->traction->current_customers ?? old('current_customers') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup Current Customers') }}">
                                                                @error('current_customers')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Current Customers -->

                                                            <!-- Start Boards Produced -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="boards_produced" class="form-label ">{{ ___('startups.Boards Produced') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input type="number" class="form-control ot-input @error('boards_produced') is-invalid @enderror" name="boards_produced"
                                                                    list="datalistOptions" id="boards_produced" value="{{ @$data['startup']->traction->boards_produced ?? old('boards_produced') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup Boards Produced') }}">
                                                                @error('boards_produced')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Boards Produced -->

                                                            <!-- Start Revenues -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="revenues" class="form-label ">{{ ___('startups.Sales Pipeline') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input type="number" class="form-control ot-input @error('revenues') is-invalid @enderror" name="revenues"
                                                                    list="datalistOptions" id="revenues" value="{{ @$data['startup']->traction->revenues ?? old('revenues') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup Sales Pipeline') }}">
                                                                @error('revenues')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Revenues -->

                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- End startup info -->

                                                <!-- Start complete form -->
                                                <div>
                                                    <button type="submit"
                                                            class="btn btn-primary">{{ ___('common.Submit') }}</button>
                                                </div>
                                                <!-- End complete form -->
                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- form-with-multiStep End -->

                </div>
            </div>
        </div>
    </section>
@endsection