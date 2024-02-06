<?php

namespace Modules\StartUps\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StartupTractionRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'trees_saved' => 'nullable|numeric',
            'current_customers' => 'nullable|numeric|integer',
            'boards_produced' => 'nullable|numeric|integer',
            'revenues' => 'nullable|numeric',
        ];
    }

    public function messages()
    {
        return [
            'trees_saved.numeric' => ___('startups.Trees saved must be a numeric value.'),
            'current_customers.numeric' => ___('startups.Current customers must be a numeric value.'),
            'current_customers.integer' => ___('startups.Current customers must be an integer.'),
            'boards_produced.numeric' => ___('startups.Boards produced must be a numeric value.'),
            'boards_produced.integer' => ___('startups.Boards produced must be an integer.'),
            'revenues.numeric' => ___('startups.Revenues must be a numeric value.'),
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
