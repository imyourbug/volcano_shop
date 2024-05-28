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
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->string('a_name')->nullable();
            $table->string('a_slug')->nullable();
            $table->string('a_hot')->nullable();
            $table->string('a_active')->nullable();
            $table->string('a_menu_id')->nullable();
            $table->string('a_view')->nullable();
            $table->text('a_description')->nullable();
            $table->string('a_avatar')->nullable();
            $table->text('a_content')->nullable();
            $table->string('a_position_2')->nullable();
            $table->string('a_position_1')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('articles');
    }
};
