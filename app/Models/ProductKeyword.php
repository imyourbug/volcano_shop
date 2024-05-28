<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductKeyword extends Model
{
    protected $table   = 'products_keywords';
    protected $guarded = [''];

    protected $fillable = [
        'pk_product_id',
        'pk_keyword_id',
    ];
}
