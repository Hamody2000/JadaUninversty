<div class="modal fade lead-modal" id="lead-modal" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content data">
            <div class="modal-header modal-header-image mb-3">
                <h5 class="modal-title">{{ @$data['title'] }} </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <i class="las la-times" aria-hidden="true"></i>
                </button>
            </div>
            <div class="modal-body ">
                <form action="{{ $data['url'] }}" method="post" id="modal_values"
                    enctype="multipart/form-data">
                    @csrf

                    <div class="row mb-3 row mb-3 d-flex justify-content-center">
                        
                        <div class="col-xl-12 col-md-6 mb-3">
                            <label for="name" class="form-label ">{{ ___('common.Name') }} <span
                                    class="fillable">*</span></label>
                            <input class="form-control ot-input @error('name') is-invalid @enderror"
                                name="name" list="datalistOptions" id="name"
                                value="{{ @$data['menu']->getTranslation('name', 'en') }}"
                                placeholder="{{ ___('placeholder.Enter Name') }}">
                            @error('name')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="col-xl-12 col-md-6 mb-3">
                            <label for="name_ar" class="form-label ">{{ ___('common.Arabic Name') }} <span
                                    class="fillable">*</span></label>
                            <input class="form-control ot-input @error('name_ar') is-invalid @enderror"
                                name="name_ar" list="datalistOptions" id="name_ar"
                                value="{{ @$data['menu']->getTranslation('name', 'ar') }}"
                                placeholder="{{ ___('placeholder.Enter Arabic Name') }}">
                            @error('name_ar')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="col-xl-12 col-md-6 mb-3">
                            <label for="status" class="form-label ">{{ ___('common.Status') }}
                                <span class="fillable">*</span></label>
                            <select
                                class="form-select ot-input modal_select2 @error('status_id') is-invalid @enderror"
                                id="status" required name="status_id">
                                <option value="1" {{ @$data['menu']->status_id == 1 ? ' selected' : '' }}>
                                    {{ ___('common.Active') }}</option>
                                <option value="2" {{ @$data['menu']->status_id == 2 ? ' selected' : '' }}>
                                    {{ ___('common.Inactive') }}</option>
                            </select>
                            @error('status_id')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="form-group d-flex justify-content-end">
                                <button type="button" onclick="submitForm()"
                                    class="btn btn-lg ot-btn-primary">{{ @$data['button'] }}</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="{{ asset('backend/assets/js/modal/__modal.min.js') }}"></script>
