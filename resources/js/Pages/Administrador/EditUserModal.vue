// resources/js/Pages/Administrador/EditUserModal.vue

<script>
import { useForm } from '@inertiajs/vue3';
import Swal from 'sweetalert2';

export default {
    props: ['user', 'comunas', 'roles', 'cursos'],
    data() {
        return {
            form: useForm({
                id: this.user?.id || null,
                nombre_user: this.user?.nombre_user || '',
                apellido_user: this.user?.apellido_user || '',
                rut: this.user?.rut || '',
                email: this.user?.email || '',
                direccion: this.user?.direccion || '',
                fk_user_comuna: this.user?.fk_user_comuna || null,
                rol: this.user?.roles[0]?.id || null,
                curso: this.user?.curso?.id || null,
            })
        };
    },
    watch: {
        user: {
            immediate: true,
            handler(newValue) {
                this.form.id = newValue?.id || null;
                this.form.nombre_user = newValue?.nombre_user || '';
                this.form.apellido_user = newValue?.apellido_user || '';
                this.form.rut = newValue?.rut || '';
                this.form.email = newValue?.email || '';
                this.form.direccion = newValue?.direccion || '';
                this.form.fk_user_comuna = newValue?.fk_user_comuna || null;
                this.form.rol = newValue?.roles[0]?.id || null;
                this.form.curso = newValue?.curso?.id || null;
            }
        },
        'form.errors'() {
            if (this.form.errors.rut === "The rut has already been taken.") {
                Swal.fire({
                    icon: 'warning',
                    title: 'No se ha podido actualizar el registro',
                    text: 'El rut ingresado ya fue registrado.',
                });
            }
            if (this.form.errors.email === "The email has already been taken.") {
                Swal.fire({
                    icon: 'warning',
                    title: 'No se ha podido actualizar el registro',
                    text: 'El email ingresado ya fue registrado.',
                });
            }
        },
        'form.wasSuccessful'() {
            this.$emit('close');
            Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'El registro se ha actualizado exitosamente!',
                showConfirmButton: false,
                timer: 2000
            });
            this.form.reset();
        }
    },
    methods: {
        enviar() {
            this.form.put(`/users/update/${this.form.id}`);
        }
    }
};
</script>

<template>
    <div class="modal" tabindex="-1" style="display: block;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Editar Usuario</h5>
                    <button type="button" class="btn-close" aria-label="Close" @click="$emit('close')"></button>
                </div>
                <div class="modal-body">
                    <form @submit.prevent="enviar">
                        <div class="mb-3">
                            <label for="nombre_user" class="form-label">Nombres</label>
                            <input v-model="form.nombre_user" type="text" id="nombre_user" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="apellido_user" class="form-label">Apellidos</label>
                            <input v-model="form.apellido_user" type="text" id="apellido_user" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="rut" class="form-label">Rut</label>
                            <input v-model="form.rut" type="text" id="rut" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Correo electrónico</label>
                            <input v-model="form.email" type="email" id="email" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="fk_user_comuna" class="form-label">Comuna</label>
                            <select v-model="form.fk_user_comuna" id="fk_user_comuna" class="form-select">
                                <option v-for="item in comunas" :value="item.id" :key="item.id">{{ item.nombre_comuna }}</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="direccion" class="form-label">Dirección</label>
                            <input v-model="form.direccion" type="text" id="direccion" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="rol" class="form-label">Rol</label>
                            <select v-model="form.rol" id="rol" class="form-select">
                                <option v-for="item in roles" :value="item.id" :key="item.id">{{ item.name }}</option>
                            </select>
                        </div>
                        <div v-show="form.rol === 41" class="mb-3">
                            <label for="curso" class="form-label">Curso</label>
                            <select v-model="form.curso" id="curso" class="form-select">
                                <option v-for="item in cursos" :value="item.id" :key="item.id">{{ item.nombre_curso }}</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-success">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>
