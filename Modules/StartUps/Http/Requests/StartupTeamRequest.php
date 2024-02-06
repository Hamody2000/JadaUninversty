<?php

namespace Modules\StartUps\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StartupTeamRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|string|max:255',
            'role' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'name_ar' => 'required|string|max:255|regex:/^[\p{Arabic} ]+$/u',
            'role_ar' => 'required|string|max:255|regex:/^[\p{Arabic} ]+$/u',
            'description_ar' => 'required|string|regex:/^[\p{Arabic} ]+$/u',
        ];
    }

    public function messages()
    {
        return [
            'name.required' => ___('startups.The name field is required.'),
            'name.string' => ___('startups.The name must be a string.'),
            'name.max' => ___('startups.The name may not be greater than :max characters.'),
            'role.required' => ___('startups.The role field is required.'),
            'role.string' => ___('startups.The role must be a string.'),
            'role.max' => ___('startups.The role may not be greater than :max characters.'),
            'description.required' => ___('startups.The description field is required.'),
            'description.string' => ___('startups.The description must be a string.'),
            'image.image' => ___('startups.The image must be an image file.'),
            'image.mimes' => ___('startups.The image must be a file of type: :mimes.'),
            'image.max' => ___('startups.The image may not be greater than :max kilobytes.'),
            'name_ar.required' => ___('startups.The Arabic name field is required.'),
            'name_ar.string' => ___('startups.The Arabic name must be a string.'),
            'name_ar.max' => ___('startups.The Arabic name may not be greater than :max characters.'),
            'name_ar.regex' => ___('startups.The Arabic name must contain only Arabic characters.'),
            'role_ar.required' => ___('startups.The Arabic role field is required.'),
            'role_ar.string' => ___('startups.The Arabic role must be a string.'),
            'role_ar.max' => ___('startups.The Arabic role may not be greater than :max characters.'),
            'role_ar.regex' => ___('startups.The Arabic role must contain only Arabic characters.'),
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
