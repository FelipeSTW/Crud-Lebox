<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use Inertia\Inertia;
use App\Models\User;
use App\Models\Comuna;
use App\Models\Curso;
use App\Models\Periodo;
use App\Models\Clase;
use App\Models\Composicion_curso;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function index()
    {
        $usuarios = User::with(['roles', 'comuna'])->get();
        $comunas = Comuna::all();
        $roles = Role::all();
        $cursos = Curso::all();

        return Inertia::render('Administrador/Users', compact('usuarios', 'comunas', 'roles', 'cursos'));
    }

    public function alumnosIndex()
    {
        $users = User::with('roles')->get();
        $cursos = Curso::all();
        $composicion_curso = Composicion_curso::all();
        $usuarios = $users->map(function ($item) {
            $roles = $item->roles->pluck('name')->toArray();
            $rolString = implode(', ', $roles);

            return [
                'id' => $item->id,
                'nombre' => $item->nombre_user . ' ' . $item->apellido_user,
                'rol' => $rolString,
            ];
        });

        return Inertia::render('Administrador/Alumnos', compact('cursos', 'composicion_curso', 'usuarios'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'nombre_user' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'rut' => 'required|string|max:255|unique:users',
        ]);

        // Creación de usuario
        $user = User::create([
            'nombre_user' => $request->nombre_user,
            'apellido_user' => $request->apellido_user,
            'email' => $request->email,
            'rut' => $request->rut,
            'fk_user_comuna' => 1,
            'direccion' => $request->direccion,
            'password' => Hash::make('clave'),
        ]);

        // Asignación de rol
        $rol = Role::find($request->rol)->name;
        $user->assignRole($rol);

        // Asignación de curso y asignaturas para alumnos
        $asignaturas_media = [2, 3, 4, 6, 9, 11, 12, 13, 14, 15, 16];
        $asignaturas_basica = [2, 3, 4, 5, 6, 7, 8, 9, 10, 16];

        if ($request->curso) {
            foreach ($asignaturas_media as $item) {
                Composicion_curso::create([
                    'user_id' => $user->id,
                    'curso_id' => $request->curso,
                    'fk_curso_asignatura' => $item,
                    'año' => Carbon::now()->year,
                ]);
            }
        }

        return to_route('index.users');
    }

    // Eliminar registro
    public function userDelete($id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return response()->json(['success' => 'Usuario eliminado exitosamente.']);
    }

    // Editar registro
    public function update(Request $request, $id)
    {
        $request->validate([
            'nombre_user' => 'required|string|max:255',
            'apellido_user' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users,email,' . $id,
            'rut' => 'required|string|max:255|unique:users,rut,' . $id,
            'fk_user_comuna' => 'required|integer',
            'direccion' => 'string|nullable',
            'rol' => 'required|integer',
            'curso' => 'integer|nullable',
        ]);

        $user = User::findOrFail($id);
        $user->update([
            'nombre_user' => $request->nombre_user,
            'apellido_user' => $request->apellido_user,
            'email' => $request->email,
            'rut' => $request->rut,
            'fk_user_comuna' => $request->fk_user_comuna,
            'direccion' => $request->direccion,
        ]);

        // Actualizar rol del usuario
        $user->syncRoles(Role::find($request->rol)->name);

        // Actualizar curso del usuario si es un alumno
        if ($request->rol == Role::where('name', 'Alumno')->first()->id) {
            Composicion_curso::updateOrCreate(
                ['user_id' => $user->id],
                ['curso_id' => $request->curso, 'año' => Carbon::now()->year]
            );
        }

        return response()->json(['success' => 'Usuario actualizado exitosamente.', 'usuario' => $user]);
    }
}
