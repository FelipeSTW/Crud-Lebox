<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\TipoAsistencia;
use Illuminate\Support\Facades\DB;

class TipoAsistenciaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('ALTER TABLE tipo_asistencias AUTO_INCREMENT = 1');

        $asistencias = [
            'PRESENTE',
            'AUSENTE',
            'JUSTIFICADO',

        ];


        foreach ($asistencias as $asistencia) {
            TipoAsistencia::create([
                'nombre_asistencia' => $asistencia,
            ]);
        }
    }
}
