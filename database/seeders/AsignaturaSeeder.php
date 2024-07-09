<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Asignatura;
use Illuminate\Support\Facades\DB;

class AsignaturaSeeder extends Seeder
{

    public function run(): void
    {
        $asignaturas = [
            'LENGUAJE Y COMUNICACIÓN',
            'MATEMÁTICAS',
            'HISTORIA Y CIENCIAS SOCIALES',
            'CIENCIAS NATURALES',
            'EDUCACIÓN FÍSICA',
            'EDUCACIÓN ARTÍSTICA',
            'RELIGIÓN',
            'INGLÉS',
            'TECNOLOGÍA',
            'EDUCACIÓN CIUDADANA',
            'FILOSOFÍA',
            'FÍSICA',
            'QUÍMICA',
            'BIOLOGÍA',
        ];

        foreach ($asignaturas as $asignatura) {
            Asignatura::create([
                'nombre_asignatura' => $asignatura,
            ]);
        }
    }
}

