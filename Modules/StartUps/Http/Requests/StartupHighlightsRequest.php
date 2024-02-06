<?php

namespace Modules\StartUps\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StartupHighlightsRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'market_size' => 'nullable|numeric',
            'trees_saved' => 'nullable|numeric',
            'compliance_european_standards' => 'nullable|numeric',
            'sales_pipeline' => 'nullable|numeric',
            'profit_margin' => 'nullable|numeric',
        ];
    }

    public function messages()
    {
        return [
            'market_size.numeric' => ___('startups.Market size must be a numeric value.'),
            'trees_saved.numeric' => ___('startups.Trees saved must be a numeric value.'),
            'compliance_european_standards.numeric' => ___('startups.Compliance with European standards must be a numeric value.'),
            'sales_pipeline.numeric' => ___('startups.Sales pipeline must be a numeric value.'),
            'profit_margin.numeric' => ___('startups.Profit margin must be a numeric value.')
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
