<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
        'od_transaction_id',
        'od_product_id',
        'od_sale',
        'od_qty',
        'od_price',
    ];

    protected $guarded = [''];

    public function product()
    {
        return $this->belongsTo(Product::class, 'od_product_id');
    }
}
