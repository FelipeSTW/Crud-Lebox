<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolesPermisosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $Administrador = Role::create(['name' => 'administrador']);
        $Director = Role::create(['name' => 'director']);
        $Utp = Role::create(['name' => 'utp']);
        $Profesor = Role::create(['name' => 'profesor']);
        $Apoderado = Role::create(['name' => 'apoderado']);
        $Alumno = Role::create(['name' => 'alumno']);



        $permission = Permission::create(['name' => 'editar usuarios']);
        $permission = Permission::create(['name' => 'mantenedores']);
       
    }
}
