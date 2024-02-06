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
        Schema::create('startup_advisors', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('startup_id');
            $table->foreign('startup_id')->references('id')->on('startups')->onDelete('cascade');
            
            $table->string('name');
            $table->string('role');
            $table->text('description');
            $table->foreignId('advisors_image_id')->nullable()->constrained('uploads')->onDelete('cascade');

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
        Schema::dropIfExists('startup_advisors');
    }
};
