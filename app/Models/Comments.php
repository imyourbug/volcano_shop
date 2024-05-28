<?php

namespace App\Models;

use App\Models\Product;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    protected $fillable = [
        'cmt_name',
        'cmt_email',
        'cmt_content',
        'cmt_parent_id',
        'cmt_product_id',
        'cmt_admin_id',
        'cmt_user_id',
        'cmt_like',
        'cmt_disk_like',
    ];

    protected $guarded = [''];

    public function user()
    {
        return $this->belongsTo(User::class, 'cmt_user_id', 'id');
    }

    public function reply()
    {
        return $this->hasMany(Comments::class, 'cmt_parent_id', 'id');
    }

    public function product()
    {
        return $this->belongsTo(Product::class, 'cmt_product_id');
    }
}
