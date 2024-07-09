<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Curso;
use Illuminate\Support\Facades\DB;

class CursoSeeder extends Seeder
{

    public function run(): void
    {
        DB::statement('ALTER TABLE cursos AUTO_INCREMENT = 1');

        $cursos = [
            'PRIMERO A',
            'PRIMERO B',
            'SEGUNDO A',
            'SEGUNDO B',
            'TERCERO A',
            'TERCERO B',
            'CUARTO A',
            'CUARTO B',
            'QUINTO A',
            'QUINTO B',
            'SEXTO A',
            'SEXTO B',
            'SÉPTIMO A',
            'SÉPTIMO B',
            'OCTAVO A',
            'OCTAVO B',
            'PRIMERO MEDIO A',
            'PRIMERO MEDIO B',
            'SEGUNDO MEDIO A',
            'SEGUNDO MEDIO B',
            'TERCERO MEDIO A',
            'TERCERO MEDIO B',
            'CUARTO MEDIO A',
            'CUARTO MEDIO B',
        ];


        foreach ($cursos as $curso) {
            Curso::create([
                'nombre_curso' => $curso,
            ]);
        }
    }
}
