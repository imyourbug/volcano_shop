<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Slide extends Model
{
    protected $fillable = [
        'sd_title',
        'sd_link',
        'sd_image',
        'sd_target',
        'sd_active',
        'sd_sort',
    ];

    protected $guarded = [''];
}
