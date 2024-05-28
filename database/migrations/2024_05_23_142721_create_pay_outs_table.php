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
        Schema::create('pay_outs', function (Blueprint $table) {
            $table->id();
            $table->string('po_user_id')->nullable();
            $table->string('po_transaction_id')->nullable();
            $table->string('po_money')->nullable();
            $table->string('po_meta_detail')->nullable();
            $table->string('po_status')->nullable();
            $table->string('po_month')->nullable();
            $table->string('po_year')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pay_outs');
    }
};
