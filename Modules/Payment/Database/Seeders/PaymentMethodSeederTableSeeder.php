<?php

namespace Modules\Payment\Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class PaymentMethodSeederTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $paymentMethods = [
            [
                'title' => 'paypal',
                'name' => 'paypal',
                'status_id' => 1,
                'credentials' => null,
            ],
            [
                'title' => 'cridet card',
                'name' => 'cridet card',
                'status_id' => 1,
                'credentials' => null,
            ],
            [
                'title' => 'direct bank ',
                'name' => 'direct bank',
                'status_id' => 1,
                'credentials' => null,
            ]
        ];

        foreach ($paymentMethods as $paymentMethod) {
            \Modules\Payment\Entities\PaymentMethod::create($paymentMethod);
        }
    }
}
