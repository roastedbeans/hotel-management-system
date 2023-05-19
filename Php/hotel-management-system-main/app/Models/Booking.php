<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    protected $fillable = [
        'guest_name',
        'guest_number',
        'check_in_date',
        'check_out_date',
        'room_type',
        'room_price',
        'payment_method',
        'card_number',
    ];
}
