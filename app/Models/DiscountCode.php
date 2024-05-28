<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DiscountCode extends Model
{
    //
    protected $fillable = [
        'd_code',
        'd_number_code',
        'd_date_start',
        'd_date_end',
        'd_percentage',
    ];

    protected $table   = 'discount_code';
}
