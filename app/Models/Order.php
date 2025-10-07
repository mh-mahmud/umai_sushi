<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $table = 'orders';

    protected $fillable = [
        'invoice_no',
        'customer_name',
        'mobile_number',
        'area',
        'address',
        'product_code',
        'product_name',
        'product_color',
        'product_size',
        'unit_price',
        'quantity',
        'total_price',
        'sub_total',
        'shipping_charge',
        'payable_amount',
        'discount',
        'status',
        'order_date',
    ];

   
    /*public function setTotalPriceAttribute()
    {
        $this->attributes['total_price'] = $this->attributes['unit_price'] * $this->attributes['quantity'];
    }*/
}
