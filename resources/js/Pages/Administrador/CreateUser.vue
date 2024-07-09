<script >

    import {useForm} from '@inertiajs/vue3';
    import Swal from 'sweetalert2'
    import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';

    export default{
        data() {
            return {
                form : useForm({
                    nombre_user: null,
                    apellido_user: null,
                    rut: null,
                    email: null,
                    direccion: null,
                    fk_user_comuna: null,
                    rol: null,
                    curso: null,

                })
            }
        },
        components:{
            AuthenticatedLayout
        },
        props:[
            'comunas',
            'roles',
            'cursos'
        ],
        methods:{
            enviar(){
                this.form.post('users/store')

            }
        },
        watch:{
        'form.errors'(){
            if (this.form.errors.rut ==="The rut has already been taken.") {
                Swal.fire({
                icon: 'warning',
                title: 'No se ha podido ingresar el registro',
                text: 'El rut ingresado ya fue registrado.',

                })
            }
            if (this.form.errors.email ==="The email has already been taken.") {
                Swal.fire({
                icon: 'warning',
                title: 'No se ha podido ingresar el registro',
                text: 'El email ingresado ya fue registrado.',

                })
            }
            if (this.form.errors.nombre_marca ==="The nombre marca format is invalid.") {
                Swal.fire({
                icon: 'warning',
                title: 'No se ha podido ingresar la marca',
                text: 'La marca ingresada no puede contener numeros ni caracteres especiales',

                })
            }
        },
        'form.wasSuccessful'(){
                this.form.reset();
                Swal.fire({
                position: 'center-center',
                icon: 'success',
                title: 'El registro se ha creado exitosamente!',
                showConfirmButton: false,
                timer: 2000
                })
                location.reload();

            }
        }
    }




</script>

<template>

    <div class="col-10 offset-1">
        <form  @submit.prevent="enviar">
            <div class="my-3">
                <label for="nombre_user" class="form-label">Nombres</label>
                <input v-model="form.nombre_user" type="text" name="nombre_user" id="nombre_user" class="form-control">
            </div>
            <div class="my-3">
                <label for="apellido_user" class="form-label">Apellidos</label>
                <input v-model="form.apellido_user" type="text" name="apellido_user" id="apellido_user" class="form-control">
            </div>
            <div class="my-3">
                <label for="rut" class="form-label">Rut</label>
                <input v-model="form.rut" type="text" name="rut" id="rut" class="form-control">
            </div>
            <div class="my-3">
                <label for="email" class="form-label">Correo electronico</label>
                <input v-model="form.email" type="email" name="email" id="email" class="form-control">
            </div>
            <div class="my-3">
                <label for="fk_user_comuna" class="form-label">Comuna</label>
                <select v-model="form.fk_user_comuna" name="fk_user_comuna" id="fk_user_comuna" class="form-select">
                    <option v-for="item in comunas" :value="item.id" :key="item.id">{{ item.nombre_comuna }}</option>
                </select>
            </div>
            <div class="my-3">
                <label for="direccion" class="form-label">Dirección</label>
                <input v-model="form.direccion" type="text" name="direccion" id="direccion" class="form-control">
            </div>
            <div class="my-3">
                <label for="rol" class="form-label">Rol</label>
                <select v-model="form.rol" name="rol" id="rol" class="form-select">
                    <option v-for="item in roles" :value="item.id" :key="item.id">{{ item.name }}</option>
                </select>
            </div>
            <div v-show="form.rol === 41" class="my-3">
                <label   for="curso" class="form-label">Curso</label>
                <select  v-model="form.curso" name="curso" id="curso" class="form-select">
                    <option v-for="item in cursos" :value="item.id" :key="item.id">{{ item.nombre_curso }}</option>
                </select>
            </div>
            <div class="my-3">
                <button type="submit" class="btn btn-success">Guardar1</button>
            </div>

        </form>
    </div>
</template>
