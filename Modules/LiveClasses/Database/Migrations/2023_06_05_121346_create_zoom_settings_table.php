<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('zoom_settings', function (Blueprint $table) {
            $table->id();

            // $table->integer('user_id')->default(1);
            $table->foreignId('user_id')->constrained('users', 'id')->default(1);
            
            $table->tinyInteger('package_id')->default(1);
            $table->boolean('host_video')->default(0);
            $table->boolean('participant_video')->default(0);
            $table->boolean('join_before_host')->default(0);
            $table->string('audio')->default('both')->comment('both, telephony & voip');
            $table->string('auto_recording')->default('none')->comment('local, cloud & none');
            $table->tinyInteger('approval_type')->default(0)->comment('0 => Automatic, 1 => Manually & 2 No Registration');
            $table->boolean('mute_upon_entry')->default(0);
            $table->boolean('waiting_room')->default(0);
            $table->string('client_id')->nullable();
            $table->string('client_secret')->nullable();
            $table->string('account_id')->nullable();
            $table->foreignId('status_id')->default(1)->constrained('statuses')->onDelete('cascade');
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
        Schema::dropIfExists('zoom_settings');
    }
};
