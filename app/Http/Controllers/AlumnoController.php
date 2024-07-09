<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Carbon\Carbon;
use App\Models\Composicion_curso;
use App\Models\Clase;
use Illuminate\Support\Facades\Validator;

class AlumnoController extends Controller
{
    function store(Request $request){



        function obtenerSemestre()
        {
            // Obtener la fecha actual
            $fechaActual = Carbon::now();

            // Obtener el número de mes
            $mes = $fechaActual->month;

            // Determinar el semestre
            $semestre = ($mes >= 1 && $mes <= 6) ? 1 : 2;

            return $semestre;
        }


        $fechaActual = Carbon::now();
        $userID = auth()->id();
        $registro_usuario = Composicion_curso::where([
                'user_id' => auth()->id(),
                'fk_curso_asignatura' => 16
            ])->first();

        // Validación
        
    // Validación personalizada para evitar duplicados
   


        return to_route('dashboard');
    }
}
