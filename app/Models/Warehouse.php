<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Warehouse extends Model
{
    protected $fillable = [
        'w_product_id',
        'w_price',
        'w_qty',
        'w_time_warehouse',
    ];

    public $table = 'warehouses';
    protected $guarded = [''];
}
