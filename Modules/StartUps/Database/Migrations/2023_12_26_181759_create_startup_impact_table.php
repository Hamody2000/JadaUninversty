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
        Schema::create('startup_impact', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('startup_id');
            $table->foreign('startup_id')->references('id')->on('startups')->onDelete('cascade');
            
            $table->foreignId('impact_image_id')->nullable()->constrained('uploads')->onDelete('cascade');
            
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
        Schema::dropIfExists('startup_impact');
    }
};