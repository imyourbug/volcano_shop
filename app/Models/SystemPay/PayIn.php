<?php

namespace App\Models\SystemPay;

use App\Models\Admin;
use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class PayIn extends Model
{
    protected $fillable = [
        'pi_user_id',
        'pi_admin_id',
        'pi_provider',
        'pi_money',
        'pi_fee',
        'pi_amount',
        'pi_meta_detail',
        'pi_status',
        'pi_month',
        'pi_year',
    ];

    protected $guarded = [''];
    protected $table = 'pay_ins';

    const STATUS_SUCCESS = 1;

    protected $provider = [
        1 => [
            'name'  => 'ATM',
            'class' => 'label-default'
        ],
        2 => [
            'name'  => 'MoMo',
            'class' => 'label-success'
        ]
    ];

    public function getProvider()
    {
        return Arr::get($this->provider, $this->pi_provider, '[N\A]');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'pi_user_id', 'id');
    }

    public function admin()
    {
        return $this->belongsTo(Admin::class, 'pi_admin_id', 'id');
    }
}
