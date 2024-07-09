<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{

    public function run(): void
    {
        $user1 = User::create([
            'nombre_user' => 'Felipe',
            'apellido_user' => 'Ahumada',
            'email' => 'fahumada@gmail.com',
            'password' => Hash::make('NuevaContraseña@01'),
            'rut' => '11.111.111-1',
            'direccion' => 'calle 1',
            'fk_user_comuna' => 2
        ]);


        $user1->assignRole('administrador');


        $user2 = User::create([
            'nombre_user' => 'Felipe',
            'apellido_user' => 'Ahumada',
            'email' => 'felipe@gmail.com',
            'password' => Hash::make('clave'),
            'rut' => '12.111.111-1',
            'direccion' => 'calle 2',
            'fk_user_comuna' => 2
        ]);


        $user2->assignRole('director');


        $user3 = User::create([
            'nombre_user' => 'maikelis',
            'apellido_user' => 'Salazar',
            'email' => 'maikelis@gmail.com',
            'password' => Hash::make('clave'),
            'rut' => '13.111.111-1',
            'direccion' => 'calle 3',
            'fk_user_comuna' => 2
        ]);


        $user3->assignRole('profesor');

        $user4 = User::create([
            'nombre_user' => 'Juan',
            'apellido_user' => 'Veloz',
            'email' => 'juan@gmail.com',
            'password' => Hash::make('clave'),
            'rut' => '14.111.111-1',
            'direccion' => 'calle 4',
            'fk_user_comuna' => 2
        ]);


        $user4->assignRole('alumno');

        $user5 = User::create([
            'nombre_user' => 'Carlos',
            'apellido_user' => 'Aguilar',
            'email' => 'carlos@gmail.com',
            'password' => Hash::make('clave'),
            'rut' => '15.111.111-1',
            'direccion' => 'calle 5',
            'fk_user_comuna' => 2
        ]);


        $user5->assignRole('utp');
    }
}
