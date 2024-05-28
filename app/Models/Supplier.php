<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $fillable = [
        'sl_name',
        'sl_phone',
        'sl_email',
        'sl_address',
    ];

    protected $table = 'suppliers';
    protected $guarded = [''];
}
