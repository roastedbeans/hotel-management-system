<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    protected $fillable = [
        'employee_name',
        'employee_bday',
        'employee_email',
        'employee_number',
        'employee_role',
    ];
}
