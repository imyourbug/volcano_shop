<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SocialAccount extends Model
{
    protected $fillable = [
        'provider_user_id',
        'user_id',
        'provider',
    ];

    protected $guarded = [''];

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
