<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductAttribute extends Model
{
    //
    protected $fillable = [
        'pa_product_id',
        'pa_attribute_id',
    ];
}
