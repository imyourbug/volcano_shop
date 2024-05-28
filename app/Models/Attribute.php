<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Attribute extends Model
{
    protected $fillable = [
        'atb_name',
        'atb_slug',
        'atb_type',
        'atb_category_id',
    ];

    protected $guarded = [''];

    public $type = [
        1 => [
            'name' => 'Thương hiệu',
            'class' => 'btn-sm btn-info'
        ],
        2 => [
            'name'  => 'Xuất xứ thương hiệu',
            'class' => 'btn-sm btn-success'
        ],
        3 => [
            'name' => 'Nơi sản xuất',
            'class' => 'btn-sm btn-primary'
        ],

        4 => [
            'name' => 'Đối tượng',
            'class' => 'btn-sm btn-danger'
        ],
    ];

    public function getType()
    {
        return Arr::get($this->type, $this->atb_type, "[N\A]");
    }

    public static function getListType()
    {
        $that = new self();
        return $that->type;
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'atb_category_id');
    }
}
