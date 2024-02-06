<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('startup_highlights', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('startup_id');
            $table->foreign('startup_id')->references('id')->on('startups')->onDelete('cascade');

            $table->float('market_size')->nullable();
            $table->float('trees_saved')->nullable();
            $table->float('compliance_european_standards')->nullable();
            $table->float('sales_pipeline')->nullable();
            $table->float('profit_margin')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('startup_highlights');
    }
};
