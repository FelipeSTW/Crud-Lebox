<?php

namespace Database\Seeders;
use Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            ComunaSeeder::class,
            RolesPermisosSeeder::class,
            UserSeeder::class,
            ClaseSeeder::class,
        ]);
    }
}
