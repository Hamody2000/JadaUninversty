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
        Schema::create('zoom_meeting_users', function (Blueprint $table) {
            $table->id();
            $table->foreignId('zoom_meeting_id')->nullable()->constrained('zoom_meetings')->onDelete('cascade');
            $table->foreignId('user_id')->nullable()->constrained('users')->onDelete('cascade');
            $table->foreignId('host')->default(0)->constrained('statuses')->onDelete('cascade');
            $table->timestamps();
        });

        $attributes = [
            'zoom_meetings' => ['update' => 'zoom_live_class_settings_update','delete' => 'live_class_zoom_meeting_delete'],
        ];

        foreach ($attributes as $key => $attribute) {
            $permission = new \App\Models\Permission();
            $permission->attribute = $key;
            $permission->keywords = $attribute;
            $permission->save();
        }
        $permission = ['zoom_live_class_settings_update', 'live_class_zoom_meeting_delete'];
        foreach (\App\Models\User::where('role_id', 1)->get() as $user) {
            $user->permissions = array_merge($user->permissions, array_values($permission));
            $user->save();
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('zoom_meeting_users');
    }
};
