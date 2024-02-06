(function ($) {
    "use strict";

    function addInput(placeholder, name, id, deleteAction, requirementCount) {
        let html = `<div class="row mt-3 mb-3" id="${requirementCount}">
                        <div class="col-11">
                            <input
                                class="form-control ot-input"
                                name="${name}[]" list="datalistOptions" required
                                id="${id}"
                                placeholder="${placeholder}">
                        </div>
                        <div class="col-1">
                            <button type="button"
                                class="btn btn-danger ${deleteAction} w-48 h-48">
                                <i class="fas fa-trash-alt"></i>
                            </button>
                        </div>
                    </div>`;
        return html;
    }

    // start add requirement input
    let requirementCount = 1;
    $(document).on('click', '.add-requirements', function () {
        requirementCount++;
        let html = addInput(enter_requirement, 'requirements', 'requirements', 'delete-requirements', 'requirement' + requirementCount)
        $('#requirement1').after(html);
    });
    // end add requirement input

    // start delete requirement input
    $(document).on('click', '.delete-requirements', function () {
        let id = $(this).parent().parent().attr('id');
        $('#' + id).remove();

    });
    // end delete requirement input

    // start add outcomes  input
    let outcomeCount = 1;
    $(document).on('click', '.add-outcomes', function () {
        outcomeCount++;
        let html = addInput(enter_requirement, 'outcomes', 'outcomes', 'delete-outcomes', 'outcome' + outcomeCount)
        $('#outcome1').after(html);
    });
    // end add outcomes  input

    // start delete outcomes  input
    $(document).on('click', '.delete-outcomes', function () {
        let id = $(this).parent().parent().attr('id');
        $('#' + id).remove();
    });

    // if course is free then hide price input and discount input
    $('#is_free_course').on('click', function () {
        if (this.checked) {
            $('.price_div').hide();
        } else {
            $('.price_div').show();
        }
    });

    // if course is auto free then hide price input and discount input
    $('#is_free_course').on('onload', function () {
        if (this.checked) {
            $('.price_div').hide();
        } else {
            $('.price_div').show();
        }
    });

    // course preview type
    $('#course_preview').on('change', function () {
        let preview_type = $(this).val();
        if (preview_type == 24) {
            $('.video_url').hide();
            $('.video_url').prop('required', false);
        } else {
            $('.video_url').show();
            $('.video_url').prop('required', true);
        }
    });

    /*-------------------------------------------------------------------------
     ----------------------- Start Next, Previous Logic -----------------------
     ------------------------------------------------------------------------*/
    let count = 1;
    let errorCounter = 0;
    let next;
    let previous;

    /************** Start Front Validation **************/
    // input validation
    const validateInput = (input) => {
        if (input.value === "") {
            input.classList.add("is-invalid");
            // remove previous error message
            if (input.nextElementSibling) {
                input.nextElementSibling.remove();
            }
            input.insertAdjacentHTML('afterend', `<div class="invalid-feedback">
            ${input.id} is required
          </div>`);
            return false;
        } else {
            input.classList.remove("is-invalid");
            return true;
        }
    };

    // image validation
    const validateImage = (image) => {
        if (image.files.length === 0) {
            image.classList.add("is-invalid");
            image.insertAdjacentHTML('afterend', `<div class="invalid-feedback">
            ${image.id} is required
            </div>`);
            return false;
        } else {
            image.classList.remove("is-invalid");
            return true;
        }
    };

    // startupInfoValidation validation
    let startupInfoValidation = () => {
        let title = document.querySelector("#title");
        let title_ar = document.querySelector("#title_ar");
        let description = document.querySelector("#description");
        let description_ar = document.querySelector("#description_ar");
        let industry = document.querySelector("#industry");
        let industry_ar = document.querySelector("#industry_ar");
        let mission = document.querySelector("#mission");
        let mission_ar = document.querySelector("#mission_ar");
        let vision = document.querySelector("#vision");
        let vision_ar = document.querySelector("#vision_ar");
        let email = document.querySelector("#email");
        let contact_num = document.querySelector("#contact_num");

        if (
            !validateInput(title) ||
            !validateInput(title_ar) ||
            !validateInput(description) ||
            !validateInput(description_ar) ||
            !validateInput(industry) ||
            !validateInput(industry_ar) ||
            !validateInput(mission) ||
            !validateInput(mission_ar) ||
            !validateInput(vision) ||
            !validateInput(vision_ar) ||
            !validateInput(email) ||
            !validateInput(contact_num)
        ) {
            ++errorCounter;
            return false;
        }

        return true;
    }

    let founderDataValidation = () => {
        let founder_name = document.querySelector("#founder_name");
        let founder_name_ar = document.querySelector("#founder_name_ar");
        let founder_role = document.querySelector("#founder_role");
        let founder_role_ar = document.querySelector("#founder_role_ar");
        let founder_email = document.querySelector("#founder_email");

        if (
            !validateInput(founder_name) ||
            !validateInput(founder_name_ar) ||
            !validateInput(founder_role) ||
            !validateInput(founder_role_ar) ||
            !validateInput(founder_email)
        ) {
            errorCounter++;
            return false;
        }

        return true;
    }

    let coFounderDataValidation = () => {
        let co_founder_name = document.querySelector("#co_founder_name");
        let co_founder_name_ar = document.querySelector("#co_founder_name_ar");
        let co_founder_role = document.querySelector("#co_founder_role");
        let co_founder_role_ar = document.querySelector("#co_founder_role_ar");
        let co_founder_email = document.querySelector("#co_founder_email");

        if (
            !validateInput(co_founder_name) ||
            !validateInput(co_founder_name_ar) ||
            !validateInput(co_founder_role) ||
            !validateInput(co_founder_role_ar) ||
            !validateInput(co_founder_email)
        ) {
            errorCounter++;
            return false;
        }

        return true;
    }
    /************** End Front Validation **************/

    /************** Start Moving Between Taps Logic **************/
    function toggleTab(next, previous) {
        $('.single-multiStep-request-list-item-number').removeClass('active'); // remove active class from all tabs
        $('.single-multiStep-request-list-item-number').removeClass('danger'); // remove active class from all tabs
        $('.tab' + previous).removeClass('current-items'); // remove active class from all tabs
        $('.tab' + previous).children().addClass('success'); // add success class to the previous tab

        $(`.tab${next}`).addClass('current-items'); // add active class to the current tab
        $(`.tab${next}`).children().addClass('active'); // add active class to the current tab

        //  form display toggle
        $('.multiStep-wrapper-contents').removeClass('active'); // remove active class from all tabs
        $(`.step${next}`).addClass('active'); // add active class to the current tab

    }

    function dangerTab(current) {
        $('.single-multiStep-request-list-item-number').removeClass('active'); // remove active class from all tabs
        $(`.tab${current}`).children().addClass('danger'); // add active class to the current tab
    }

    let increase = () => {
        previous = count;
        (errorCounter !== 0) || (count !== 4) ? count++ : count = count;
        next = count;
        toggleTab(next, previous);
    }

    $(document).on('click', '#next', function () {
        console.log(count, errorCounter);

        if (count === 3) {
            $('.next').addClass('d-none');
        } else {
            $('.next').removeClass('d-none');
        }

        if (count === 1) {
            startupInfoValidation() ? increase() : dangerTab(count);
        } else if (count === 2) {
            founderDataValidation() ? increase() : dangerTab(count);
        } else if (count === 3) {
            coFounderDataValidation() ? increase() : dangerTab(count);
        }
    });
    $(document).on('click', '#previous', function () {
        previous = next;
        (count !== 1) ? count-- : count = count;

        next = count;
        if (count === 4) {
            $('.next').addClass('d-none');
        } else {
            $('.next').removeClass('d-none');
        }
        toggleTab(next, previous);
    });
    /************** End Moving Between Taps Logic **************/

    $('#courseSubmit').on('submit', function (event) {
        if (count === 4) {
            return true;
        } else {
            event.preventDefault();
            event.stopPropagation();
            return false;
        }
    });

})(jQuery);
