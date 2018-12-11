<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
class Product extends Model
{
    protected $fillable  = [
        'product_name', 'product_description','start_price','product_delivery','featured','product_active','payment_choice','user_id',
    ];
    public function offers(){
        return $this->hasMany('App\Offer');
    }
    public function getFeaturedAttribute($featured){
        return asset($featured);
    }
    public function user(){
        return $this->belongsTo('App\User');
    }
}
