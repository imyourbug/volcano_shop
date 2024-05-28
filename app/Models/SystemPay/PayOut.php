<?php

namespace App\Models\SystemPay;

use Illuminate\Database\Eloquent\Model;

class PayOut extends Model
{
    protected $fillable = [
        'po_user_id',
        'po_transaction_id',
        'po_money',
        'po_meta_detail',
        'po_status',
        'po_month',
        'po_year',
    ];

    protected $guarded = [''];
    protected $table = 'pay_outs';

    const STATUS_SUCCESS = 1;
}
