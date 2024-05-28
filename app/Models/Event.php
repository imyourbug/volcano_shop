<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $fillable = [
        'e_name',
        'e_banner',
        'e_link',
        'e_position_1',
        'e_position_2',
        'e_position_3',
        'e_position_4',
    ];

    protected $guarded = [''];
}
