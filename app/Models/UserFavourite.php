<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserFavourite extends Model
{
    //
    protected $fillable = [
        'uf_product_id',
        'uf_user_id',
    ];
}
