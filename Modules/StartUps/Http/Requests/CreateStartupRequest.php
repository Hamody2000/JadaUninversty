<?php

namespace Modules\StartUps\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateStartupRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules(): array
    {
        return [
            // Startup Information Validation Rules
            'title' => 'required|max:80|unique:startups,title',
            'title_ar' => 'required|max:80|regex:/^[\p{Arabic} ]+$/u',
            'description' => 'required|string',
            'description_ar' => 'required|regex:/^[\p{Arabic} ]+$/u',
            'industry' => 'required|string',
            'industry_ar' => 'required|regex:/^[\p{Arabic} ]+$/u',
            'mission' => 'required|string',
            'mission_ar' => 'required|regex:/^[\p{Arabic} ]+$/u',
            'vision' => 'required|string',
            'vision_ar' => 'required|regex:/^[\p{Arabic} ]+$/u',
            'email' => 'required|email|unique:startups,email',
            'contact_num' => 'required|regex:/^\+?[0-9\s-]+$/u',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',

            // Founder Data Validation Rules
            'founder_name' => 'required|max:80',
            'founder_name_ar' => 'required|max:80|regex:/^[\p{Arabic} ]+$/u',
            'founder_role' => 'required|max:80',
            'founder_role_ar' => 'required|max:80|regex:/^[\p{Arabic} ]+$/u',
            'founder_email' => 'required|email',
            'founder_linkedin_url' => 'nullable',
            'founder_image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',

            // Co-Founder Data Validation Rules
            'co_founder_name' => 'required|max:80',
            'co_founder_name_ar' => 'required|max:80|regex:/^[\p{Arabic} ]+$/u',
            'co_founder_role' => 'required|max:80',
            'co_founder_role_ar' => 'required|max:80|regex:/^[\p{Arabic} ]+$/u',
            'co_founder_email' => 'required|email',
            'co_founder_linkedin_url' => 'nullable',
            'co_founder_image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ];
    }

    public function messages(): array
    {
        return [
            'title.required' => ___('validation.title_field_is_required'),
            'title_ar.required' => ___('validation.title_field_is_required'),
            'title.max' => ___('validation.title_field_must_be_less_than_80_characters'),
            'title_ar.max' => ___('validation.title_field_must_be_less_than_80_characters'),
            'title_ar.regex' => ___('validation.arabic_title_field_must_contains_arabic_characters_only'),

            'description.required' => ___('validation.content_field_is_required'),
            'description_ar.required' => ___('validation.content_field_is_required'),
            'description_ar.regex' => ___('validation.arabic_description_field_must_contains_arabic_characters_only'),

            'industry.required' => ___('validation.industry_field_is_required'),
            'industry_ar.required' => ___('validation.arabic_industry_field_is_required'),
            'industry_ar.regex' => ___('validation.arabic_industry_field_must_contains_arabic_characters_only'),

            'mission.required' => ___('validation.mission_field_is_required'),
            'mission_ar.required' => ___('validation.arabic_mission_field_is_required'),
            'mission_ar.regex' => ___('validation.arabic_mission_field_must_contains_arabic_characters_only'),

            'vision.required' => ___('validation.vision_field_is_required'),
            'vision_ar.required' => ___('validation.arabic_vision_field_is_required'),
            'vision_ar.regex' => ___('validation.arabic_vision_field_must_contains_arabic_characters_only'),

            'email.required' => ___('validation.email_field_is_required'),
            'email.email' => ___('validation.email_field_must_be_a_real_email'),
            'email.unique' => ___('validation.this_email_was_already_taken_before'),

            'contact_num.required' => ___('validation.contact_number_field_is_required'),
            'contact_num.regex' => ___('validation.contact_number_must_be_a_real_contact_number'),

            'image.image' => ___('validation.image_field_must_be_image'),
            'image.mimes' => ___('validation.image_field_must_be_image_type'),
            'image.max' => ___('validation.image_field_must_be_less_than_2048_kb'),


            'founder_name.required' => ___('validation.founder_name_field_is_required'),
            'founder_name_ar.required' => ___('validation.arabic_founder_name_field_is_required'),
            'founder_name.max' => ___('validation.founder_name_field_must_be_less_than_80_characters'),
            'founder_name_ar.max' => ___('validation.founder_name_field_must_be_less_than_80_characters'),
            'founder_name_ar.regex' => ___('validation.arabic_founder_name_field_must_contains_arabic_characters_only'),

            'founder_role.required' => ___('validation.founder_role_field_is_required'),
            'founder_role_ar.required' => ___('validation.founder_role_field_is_required'),
            'founder_role.max' => ___('validation.founder_role_field_must_be_less_than_80_characters'),
            'founder_role_ar.max' => ___('validation.founder_role_field_must_be_less_than_80_characters'),
            'founder_role_ar.regex' => ___('validation.arabic_founder_role_field_must_contains_arabic_characters_only'),

            'founder_email.required' => ___('validation.founder_email_field_is_required'),
            'founder_email.email' => ___('validation.founder_email_field_must_be_a_real_email'),

            'founder_image.image' => ___('validation.image_field_must_be_image'),
            'founder_image.mimes' => ___('validation.image_field_must_be_image_type'),
            'founder_image.max' => ___('validation.image_field_must_be_less_than_2048_kb'),


            'co_founder_name.required' => ___('validation.co_founder_name_field_is_required'),
            'co_founder_name_ar.required' => ___('validation.co_founder_name_field_is_required'),
            'co_founder_name.max' => ___('validation.co_founder_name_field_must_be_less_than_80_characters'),
            'co_founder_name_ar.max' => ___('validation.co_founder_name_field_must_be_less_than_80_characters'),
            'co_founder_name_ar.regex' => ___('validation.arabic_co_founder_name_field_must_contains_arabic_characters_only'),

            'co_founder_role.required' => ___('validation.co_founder_role_field_is_required'),
            'co_founder_role_ar.required' => ___('validation.co_founder_role_field_is_required'),
            'co_founder_role.max' => ___('validation.co_founder_role_field_must_be_less_than_80_characters'),
            'co_founder_role_ar.max' => ___('validation.co_founder_role_field_must_be_less_than_80_characters'),
            'co_founder_role_ar.regex' => ___('validation.arabic_co_founder_role_field_must_contains_arabic_characters_only'),

            'co_founder_email.required' => ___('validation.co_founder_email_field_is_required'),
            'co_founder_email.email' => ___('validation.co_founder_email_field_must_be_a_real_email'),

            'co_founder_image.image' => ___('validation.image_field_must_be_image'),
            'co_founder_image.mimes' => ___('validation.image_field_must_be_image_type'),
            'co_founder_image.max' => ___('validation.image_field_must_be_less_than_2048_kb'),
        ];
    }
}
