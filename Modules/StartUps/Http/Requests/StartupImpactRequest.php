<?php

namespace Modules\StartUps\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StartupImpactRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ];
    }

    public function messages()
    {
        return [
            'image.required' => ___('startups.Image is required.'),
            'image.image' => ___('startups.Image must be an image file.'),
            'images.mimes' => ___('startups.Image must be a file of type: :mimes.'),
            'images.max' => ___('startups.Image may not be greater than :max kilobytes.'),
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
}
