<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('menus', function (Blueprint $table) {
            $table->id();
            $table->string('mn_name')->nullable();
            $table->string('mn_slug')->nullable();
            $table->string('mn_avatar')->nullable();
            $table->string('mn_banner')->nullable();
            $table->string('mn_description')->nullable();
            $table->string('mn_hot')->nullable();
            $table->string('mn_status')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('menus');
    }
};
