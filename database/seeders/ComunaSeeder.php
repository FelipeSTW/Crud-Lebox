<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Comuna;
use Illuminate\Support\Facades\DB;

class ComunaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    public function run(): void
    {
        DB::statement('ALTER TABLE comunas AUTO_INCREMENT = 1');

        $comunas = [
            'SANTIAGO',
            'PROVIDENCIA',
            'LAS CONDES',
            'LA REINA',
            'ÑUÑOA',
            'MACUL',
            'LA FLORIDA',
            'MAIPÚ',
            'QUINTA NORMAL',
            'ESTACIÓN CENTRAL',
            'INDEPENDENCIA',
            'CONCHALÍ',
            'RENCA',
            'HUECHURABA',
            'RECOLETA',
            'CERRO NAVIA',
            'LO PRADO',
            'PUDAHUEL',
            'PEÑALOLÉN',
            'CERRILLOS',
        ];


        foreach ($comunas as $comuna) {
            Comuna::create([

                'nombre_comuna' => $comuna,
            ]);
        }
    }
}
