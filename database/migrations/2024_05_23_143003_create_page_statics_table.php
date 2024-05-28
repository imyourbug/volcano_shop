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
        Schema::create('statics', function (Blueprint $table) {
            $table->id();
            $table->string('s_title')->nullable();
            $table->string('s_slug')->nullable();
            $table->string('s_type')->nullable();
            $table->string('s_md5')->nullable();
            $table->text('s_content')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('page_statics');
    }
};
