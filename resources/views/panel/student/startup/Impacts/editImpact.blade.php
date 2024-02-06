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
                                        <form action="{{ route('startups.highlights.update', $data['startup']->id) }}" enctype="multipart/form-data" method="post" id="visitForm">
                                            @csrf
                                            @method('PUT')
                                            <div class="multiStep-wrapper-flex">
                                                <!-- Start startup info -->
                                                <div class="multiStep-wrapper-contents step1 active">
                                                    <div class="mb-24 border-0 pt-0">
                                                        <div class="row">

                                                            <!-- Start Profit Margin -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="profit_margin" class="form-label ">{{ ___('startups.Profit Margin') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input type="number" class="form-control ot-input @error('profit_margin') is-invalid @enderror" name="profit_margin"
                                                                    list="datalistOptions" id="profit_margin" value="{{ @$data['startup']->highlights->profit_margin ?? old('profit_margin') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup Profit Margin') }}">
                                                                @error('profit_margin')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Profit Margin -->

                                                            <!-- Start Profit Margin -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="trees_saved" class="form-label ">{{ ___('startups.Trees Saved') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input type="number" class="form-control ot-input @error('trees_saved') is-invalid @enderror" name="trees_saved"
                                                                    list="datalistOptions" id="trees_saved" value="{{ @$data['startup']->highlights->trees_saved ?? old('trees_saved') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup Trees Saved') }}">
                                                                @error('trees_saved')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Profit Margin -->

                                                            <!-- Start Profit Margin -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="compliance_european_standards" class="form-label ">{{ ___('startups.Compliance With European Standards') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input type="number" class="form-control ot-input @error('compliance_european_standards') is-invalid @enderror" name="compliance_european_standards"
                                                                    list="datalistOptions" id="compliance_european_standards" value="{{ @$data['startup']->highlights->compliance_european_standards ?? old('compliance_european_standards') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup Compliance With European Standards') }}">
                                                                @error('compliance_european_standards')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Profit Margin -->

                                                            <!-- Start Profit Margin -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="sales_pipeline" class="form-label ">{{ ___('startups.Sales Pipeline') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input type="number" class="form-control ot-input @error('sales_pipeline') is-invalid @enderror" name="sales_pipeline"
                                                                    list="datalistOptions" id="sales_pipeline" value="{{ @$data['startup']->highlights->sales_pipeline ?? old('sales_pipeline') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup Sales Pipeline') }}">
                                                                @error('sales_pipeline')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Profit Margin -->

                                                            <!-- Start Profit Margin -->
                                                            <div class="col-xl-6 col-md-6 mb-3">
                                                                <label for="market_size" class="form-label ">{{ ___('startups.Market Size') }} <span
                                                                        class="fillable">*</span></label>
                                                                <input type="number" class="form-control ot-input @error('market_size') is-invalid @enderror" name="market_size"
                                                                    list="datalistOptions" id="market_size" value="{{ @$data['startup']->highlights->market_size ?? old('market_size') }}"
                                                                    placeholder="{{ ___('startups.Enter Startup Market Size') }}">
                                                                @error('market_size')
                                                                <div id="validationServer04Feedback" class="invalid-feedback">
                                                                    {{ $message }}
                                                                </div>
                                                                @enderror
                                                            </div>
                                                            <!-- End Profit Margin -->

                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- End startup info -->

                                                <!-- Start complete form -->
                                                <div>
                                                    <button type="submit"
                                                            class="btn btn-lg ot-btn-primary">{{ ___('common.Submit') }}</button>
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