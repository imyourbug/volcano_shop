<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $fillable = [
        'mn_name',
        'mn_slug',
        'mn_avatar',
        'mn_banner',
        'mn_description',
        'mn_hot',
        'mn_status',
    ];

    protected $guarded = [''];
}
