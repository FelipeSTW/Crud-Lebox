<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('alumno_cursos', function (Blueprint $table) {
            $table->id();
            $table->string('nombre_asignatura');


            $table->unsignedBigInteger('fk_alumno_curso_user');
            $table->foreign('fk_alumno_curso_user')->references('id')->on('users');

            $table->unsignedBigInteger('fk_alumno_curso_cursos');
            $table->foreign('fk_alumno_curso_cursos')->references('id')->on('cursos');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alumno_curso');
    }
};
