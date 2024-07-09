<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Composicion_curso extends Model
{
    use HasFactory;
    public $timestamps = false;

    public $fillable = [
        'año',
        'user_id',
        'curso_id',
        'fk_curso_asignatura'
    ];

    public function curso()
    {
        // Esto asume que cada composición de curso pertenece a un solo curso y que
        // la tabla 'cursos' tiene una columna 'id' que es la clave foránea en la tabla 'composicion_cursos'
        return $this->belongsTo(Curso::class, 'curso_id');
    }
}
