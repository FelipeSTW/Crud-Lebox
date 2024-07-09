<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Encuesta extends Model
{
    use HasFactory;
    public $timestamps = false;

    public $fillable = [
        'emocion',
        'energia',
        'puntaje',
        'alimentacion_hoy',
        'durmio',
        'salud',
        'situacion_casa',
        'bulling',
        'actividad',
        'emocion_ahora',
        'fecha_encuesta',
        'fk_encuesta_periodo',
        'fk_encuesta_composicion',
        'fk_encuesta_clase'
    ];
}
