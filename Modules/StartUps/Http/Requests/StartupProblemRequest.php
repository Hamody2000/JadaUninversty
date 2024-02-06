<?php

namespace Modules\StartUps\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StartupProblemRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'title_ar' => 'required|string|max:255|regex:/^[\p{Arabic} ]+$/u',
            'description_ar' => 'required|string|regex:/^[\p{Arabic} ]+$/u',
        ];
    }

    public function messages()
    {
        return [
            'title.required' => ___('startups.The title field is required.'),
            'title.string' => ___('startups.The title must be a string.'),
            'title.max' => ___('startups.The title may not be greater than :max characters.'),
            'description.required' => ___('startups.The description field is required.'),
            'description.string' => ___('startups.The description must be a string.'),
            'image.image' => ___('startups.The image must be an image file.'),
            'image.mimes' => ___('startups.The image must be a file of type: :mimes.'),
            'image.max' => ___('startups.The image may not be greater than :max kilobytes.'),
            'title_ar.required' => ___('startups.The Arabic title field is required.'),
            'title_ar.string' => ___('startups.The Arabic title must be a string.'),
            'title_ar.max' => ___('startups.The Arabic title may not be greater than :max characters.'),
            'title_ar.regex' => ___('startups.The Arabic title must contain only Arabic characters.'),
            'description_ar.required' => ___('startups.The Arabic description field is required.'),
            'description_ar.string' => ___('startups.The Arabic description must be a string.'),
            'description_ar.regex' => ___('startups.The Arabic description must contain only Arabic characters.'),
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
