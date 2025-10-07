<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
// use App\Models\Category;

class Product extends Model
{
    use HasFactory;
    /*protected $fillable = [
    	'name',
    	'product_type',
    	'product_cost',
    	'product_value',
    	'status',
    	'description',
    	'product_code'
    ];*/
    protected $guarded = ['id'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function brand() {
        return $this->belongsTo(Brand::class);
    }

    // public function cart() {
    //     return $this->hasOne(Cart::class);
    // }

    public function order() {
        return $this->belongsTo(Order::class);
    }

}
