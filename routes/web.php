<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AlumnoController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    
  

});

Route::group(['middleware' => ['role:administrador']], function () {
    Route::get('users', [AdminController::class, 'index'])->name('index.users');
    Route::post('users/store', [AdminController::class, 'store'])->name('store.users');
    Route::put('/users/update/{id}', [AdminController::class, 'update']);
    Route::get('alumnos', [AdminController::class, 'alumnosIndex'])->name('index.alumnos');
   
    Route::delete('/users/delete/{id}', [AdminController::class, 'userDelete']);
});




require __DIR__.'/auth.php';
