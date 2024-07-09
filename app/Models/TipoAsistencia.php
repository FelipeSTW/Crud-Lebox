<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TipoAsistencia extends Model
{
    use HasFactory;
    public $timestamps = false;

    public $fillable = [
        'nombre_asistencia',
    ];
}
