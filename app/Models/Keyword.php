<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Keyword extends Model
{
    protected $fillable = [
        'k_name',
        'k_slug',
        'k_description',
        'k_hot',
    ];

    protected $guarded = [''];
}
