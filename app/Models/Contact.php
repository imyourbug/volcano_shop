<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $fillable = [
        'c_title',
        'c_phone',
        'c_email',
        'c_content',
        'c_name',
    ];

    protected $guarded = [''];
}
