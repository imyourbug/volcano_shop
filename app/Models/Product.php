<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Product extends Model
{
    protected $fillable = [
        'pro_alias',
        'pro_name',
        'pro_content',
        'pro_supplier',
        'pro_category',
        'pro_tag',
        'pro_active',
        'pro_attribute_1',
        'pro_value_1',
        'pro_attribute_2',
        'pro_value_2',
        'pro_attribute_3',
        'pro_value_3',
        'pro_sku',
        'pro_warehouse',
        'pro_number',
        'pro_allow',
        'pro_fulfillment',
        'pro_price',
        'pro_price_compare',
        'pro_require_shipping',
        'pro_vat',
        'pro_barcode',
        'pro_image',
        'pro_image_title',
        'pro_seo_title',
        'pro_seo_description',
        'pro_weight',
        'pro_weight_unit',
        'pro_image_version',
        'pro_short_description',
        'pro_code',
        'pro_code_option',
        //
        'pro_sale',
        'pro_slug',
        'pro_price_entry',
        'pro_category_id',
        'pro_supplier_id',
        'pro_admin_id',
        'pro_file',
        'pro_avatar',
        'pro_view',
        'pro_hot',
        'pro_pay',
        'pro_description',
        'pro_review_total',
        'pro_review_star',
        'pro_age_review',
        'pro_resistant',
        'pro_energy',
        'pro_country',
        'pro_link',
    ];

    protected $guarded = [''];

    public $country = [
        "1" => "Việt Nam",
        "2" => "Anh",
        "3" => "Thuỵ Sỹ",
        "4" => "Mỹ"
    ];

    public function getCountry()
    {
        return Arr::get($this->country, $this->pro_country, "[N\A]");
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'pro_category_id');
    }

    public function keywords()
    {
        return $this->belongsToMany(Keyword::class, 'products_keywords', 'pk_product_id', 'pk_keyword_id');
    }

    public function attributes()
    {
        return $this->belongsToMany(Attribute::class, 'products_attributes', 'pa_product_id', 'pa_attribute_id');
    }

    public function favourite()
    {
        return $this->belongsToMany(User::class, 'user_favourite', 'uf_product_id', 'uf_user_id');
    }

    public function images()
    {
        return $this->hasMany(ProductImage::class, 'pi_product_code', 'pro_code');
    }
}
