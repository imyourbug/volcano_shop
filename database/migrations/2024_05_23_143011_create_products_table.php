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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('pro_alias')->nullable();
            $table->string('pro_name')->nullable();
            $table->text('pro_content')->nullable();
            $table->string('pro_supplier')->nullable();
            $table->string('pro_category')->nullable();
            $table->string('pro_tag')->nullable();
            $table->string('pro_active')->nullable();
            $table->string('pro_attribute_1')->nullable();
            $table->string('pro_value_1')->nullable();
            $table->string('pro_attribute_2')->nullable();
            $table->string('pro_value_2')->nullable();
            $table->string('pro_attribute_3')->nullable();
            $table->string('pro_value_3')->nullable();
            $table->string('pro_sku')->nullable();
            $table->string('pro_warehouse')->nullable();
            $table->string('pro_number')->nullable();
            $table->string('pro_allow')->nullable();
            $table->string('pro_fulfillment')->nullable();
            $table->string('pro_price')->nullable();
            $table->string('pro_price_compare')->nullable();
            $table->string('pro_require_shipping')->nullable();
            $table->string('pro_vat')->nullable();
            $table->string('pro_barcode')->nullable();
            $table->string('pro_image')->nullable();
            $table->string('pro_image_title')->nullable();
            $table->string('pro_seo_title')->nullable();
            $table->string('pro_seo_description')->nullable();
            $table->string('pro_weight')->nullable();
            $table->string('pro_weight_unit')->nullable();
            $table->string('pro_image_version')->nullable();
            $table->string('pro_short_description')->nullable();
            $table->string('pro_code')->nullable();
            $table->string('pro_code_option')->nullable();
            $table->string('pro_sale')->nullable();
            $table->string('pro_slug')->nullable();
            $table->string('pro_price_entry')->nullable();
            $table->string('pro_category_id')->nullable();
            $table->string('pro_supplier_id')->nullable();
            $table->string('pro_admin_id')->nullable();
            $table->string('pro_file')->nullable();
            $table->string('pro_avatar')->nullable();
            $table->string('pro_view')->nullable();
            $table->string('pro_hot')->nullable();
            $table->string('pro_pay')->nullable();
            $table->string('pro_description')->nullable();
            $table->string('pro_review_total')->nullable();
            $table->string('pro_review_star')->nullable();
            $table->string('pro_age_review')->nullable();
            $table->string('pro_resistant')->nullable();
            $table->string('pro_energy')->nullable();
            $table->string('pro_country')->nullable();
            $table->string('pro_link')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
