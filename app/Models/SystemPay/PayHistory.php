<?php

namespace App\Models\SystemPay;

use Illuminate\Database\Eloquent\Model;

class PayHistory extends Model
{
    protected $fillable = [
        'ph_code',
        'ph_user_id',
        'ph_credit',
        'ph_debit',
        'ph_balance',
        'ph_meta_detail',
        'ph_status',
        'ph_month',
        'ph_year',
    ];

    protected $table = 'pay_histories';
    protected $guarded = [''];
}
