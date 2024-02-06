<?php

namespace Modules\Services\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateServiceRequest extends FormRequest
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
            'title' => 'required|max:80|unique:services,title',
            'title_ar' => 'required|max:80|regex:/^[\p{Arabic} ]+$/u',
            'description' => 'required|string',
            'description_ar' => 'required|regex:/^[\p{Arabic} ]+$/u',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
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
            'image.required' => ___('validation.image_field_is_required'),
            'image.image' => ___('validation.image_field_must_be_image'),
            'image.mimes' => ___('validation.image_field_must_be_image_type'),
            'image.max' => ___('validation.image_field_must_be_less_than_2048_kb'),
        ];
    }
}
