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
        Schema::create('startups', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('industry');
            $table->text('description');
            $table->text('mission');
            $table->text('vision');
            $table->string('website')->nullable();
            $table->string('email');
            $table->string('contact_num');
            $table->foreignId('image_id')->nullable()->constrained('uploads')->onDelete('cascade');

            $table->string('founder_name');
            $table->string('founder_role');
            $table->string('founder_email');
            $table->string('founder_linkedin_url')->nullable();
            $table->foreignId('founder_image_id')->nullable()->constrained('uploads')->onDelete('cascade');

            $table->string('co_founder_name');
            $table->string('co_founder_role');
            $table->string('co_founder_email');
            $table->string('co_founder_linkedin_url')->nullable();
            $table->foreignId('co_founder_image_id')->nullable()->constrained('uploads')->onDelete('cascade');

            $table->foreignId('created_by')->constrained('users')->onDelete('cascade')->default(1);
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
        Schema::dropIfExists('startups');
    }
};
