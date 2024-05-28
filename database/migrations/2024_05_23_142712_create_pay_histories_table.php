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
        Schema::create('pay_histories', function (Blueprint $table) {
            $table->id();
            $table->string('ph_code')->nullable();
            $table->string('ph_user_id')->nullable();
            $table->string('ph_credit')->nullable();
            $table->string('ph_debit')->nullable();
            $table->string('ph_balance')->nullable();
            $table->text('ph_meta_detail')->nullable();
            $table->string('ph_status')->nullable();
            $table->string('ph_month')->nullable();
            $table->string('ph_year')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pay_histories');
    }
};
