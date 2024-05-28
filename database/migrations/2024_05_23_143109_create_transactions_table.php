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
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->string('tst_user_id')->nullable();
            $table->string('tst_admin_id')->nullable();
            $table->string('tst_total_money')->nullable();
            $table->string('tst_name')->nullable();
            $table->string('tst_email')->nullable();
            $table->string('tst_phone')->nullable();
            $table->string('tst_address')->nullable();
            $table->string('tst_note')->nullable();
            $table->string('tst_status')->nullable();
            $table->string('tst_type')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
