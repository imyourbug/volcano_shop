<?php

namespace App\Models;

use App\Models\Product;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    protected $fillable = [
        'r_user_id',
        'r_product_id',
        'r_number',
        'r_status',
        'r_content',
        'r_name',
    ];

    protected $guarded = [''];

    public function product()
    {
        return $this->belongsTo(Product::class, 'r_product_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'r_user_id');
    }
}
