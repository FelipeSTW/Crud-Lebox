<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comuna extends Model
{
    public $timestamps = false;
    public $fillable = [
        'nombre_comuna',
    ];


    use HasFactory;
}
