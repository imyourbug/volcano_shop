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
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            $table->string('e_name')->nullable();
            $table->string('e_banner')->nullable();
            $table->string('e_link')->nullable();
            $table->string('e_position_1')->nullable();
            $table->string('e_position_2')->nullable();
            $table->string('e_position_3')->nullable();
            $table->string('e_position_4')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('events');
    }
};
