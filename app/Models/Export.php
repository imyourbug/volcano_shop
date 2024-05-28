<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Export extends Model
{
    protected $fillable = [
        'w_order_id',
        'w_price',
        'w_qty',
        'w_time_exports',
    ];

    public $table = 'exports';

    protected $guarded = [''];
}
