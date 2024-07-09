<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Periodo;
use Illuminate\Support\Facades\DB;

class PeriodoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('ALTER TABLE periodos AUTO_INCREMENT = 1');

        $periodos = [
            'PRIMER SEMESTRE',
            'SEGUNDO SEMESTRE',

        ];


        foreach ($periodos as $periodo) {
            Periodo::create([
                'nombre_periodo' => $periodo,
            ]);
        }
    }
}
