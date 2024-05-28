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
        Schema::create('comments', function (Blueprint $table) {
            $table->id();
            $table->string('cmt_name')->nullable();
            $table->string('cmt_email')->nullable();
            $table->string('cmt_content')->nullable();
            $table->string('cmt_parent_id')->nullable();
            $table->string('cmt_product_id')->nullable();
            $table->string('cmt_admin_id')->nullable();
            $table->string('cmt_user_id')->nullable();
            $table->string('cmt_like')->nullable();
            $table->string('cmt_disk_like')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comments');
    }
};
