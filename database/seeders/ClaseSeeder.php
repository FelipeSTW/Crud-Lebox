<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Clase;
use Illuminate\Support\Facades\DB;

class ClaseSeeder extends Seeder
{

    public function run(): void
    {
        //DB::statement('ALTER TABLE clase AUTO_INCREMENT = 1');

        $clases = [
            '1',
            '2',
            '3',
            '4',
            '4',
            '5',
            '6',
            '7',
            '8',
        ];


        foreach ($clases as $numero_clase) {
            Clase::create([
                'numero_clase' => $numero_clase,
            ]);
        }
    }
}
