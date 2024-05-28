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
        Schema::create('pay_ins', function (Blueprint $table) {
            $table->id();
            $table->string('pi_user_id')->nullable();
            $table->string('pi_admin_id')->nullable();
            $table->string('pi_provider')->nullable();
            $table->string('pi_money')->nullable();
            $table->string('pi_fee')->nullable();
            $table->string('pi_amount')->nullable();
            $table->string('pi_meta_detail')->nullable();
            $table->string('pi_status')->nullable();
            $table->string('pi_month')->nullable();
            $table->string('pi_year')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pay_ins');
    }
};
