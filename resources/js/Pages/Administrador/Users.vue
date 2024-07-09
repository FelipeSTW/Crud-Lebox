<!-- resources/js/Pages/Administrador/Users.vue -->

<script setup>
import { ref } from 'vue';
import Modal from '@/components/Modal.vue';
import formUser from '@/Pages/Administrador/CreateUser.vue';
import EditUserModal from '@/Pages/Administrador/EditUserModal.vue';
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import Swal from 'sweetalert2';
import { Head, router } from '@inertiajs/vue3';
import DataTable from 'datatables.net-vue3';
import DataTablesCore from 'datatables.net-bs5';
import UserDetailModal from '@/components/UserDetailModal.vue';

DataTable.use(DataTablesCore);

defineProps([
    'usuarios',
    'comunas',
    'roles',
    'cursos'
]);

const options = {
    language: {
        "decimal": "",
        "emptyTable": "La tabla está vacía",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
        "infoEmpty": "Mostrando 0 a 0 de 0 entradas",
        "infoFiltered": "(filtrado de _MAX_ entradas totales)",
        "infoPostFix": "",
        "thousands": ",",
        "lengthMenu": "Mostrar _MENU_ entradas",
        "loadingRecords": "Cargando...",
        "processing": "",
        "search": "Buscar:",
        "zeroRecords": "No se ha encontrado ningún registro",
        "paginate": {
            "first": "Primero",
            "last": "Último",
            "next": "Siguiente",
            "previous": "Anterior"
        },
        "aria": {
            "sortAscending": ": activar para ordenar la columna ascendente",
            "sortDescending": ": activar para ordenar la columna descendente"
        }
    }
};

const showDetailModal = ref(false);
const selectedUser = ref(null);
const showEditModal = ref(false);

function openDetailModal(user) {
    selectedUser.value = user;
    showDetailModal.value = true;
}

function closeDetailModal() {
    showDetailModal.value = false;
    selectedUser.value = null;
}

function openEditModal(user) {
    selectedUser.value = user;
    showEditModal.value = true;
}

function closeEditModal() {
    showEditModal.value = false;
    selectedUser.value = null;
}

function confirmarEliminacion(id) {
    Swal.fire({
        title: '¿Estás seguro que quieres eliminar el registro?',
        icon: 'warning',
        showCancelButton: true,
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Deseo eliminar el registro'
    }).then((result) => {
        if (result.isConfirmed) {
            router.delete(`/users/delete/${id}`)
                .then(response => {
                    Swal.fire({
                        position: 'center',
                        icon: 'success',
                        title: response.data.success,
                        showConfirmButton: false,
                        timer: 2000
                    });
                    // Eliminar el usuario del frontend sin recargar la página
                    usuarios.value = usuarios.value.filter(user => user.id !== id);
                })
                .catch(error => {
                    console.error('Error eliminando el registro:', error);
                    Swal.fire({
                        position: 'center',
                        icon: 'error',
                        title: 'Hubo un error eliminando el registro',
                        showConfirmButton: false,
                        timer: 2000
                    });
                });
        }
    });
}
</script>

<template>
    <Head title="Usuarios"/>
    <AuthenticatedLayout>
        <div class="shadow-lg bg-light py-5 px-5 col-10 offset-1 my-5">
            <Modal
                titulo="Añadir usuario"
                tituloBoton="Añadir Usuario"
                index="añadir"
            >
                <formUser
                    :comunas="comunas"
                    :roles="roles"
                    :cursos="cursos"
                />
            </Modal>
            <div class="my-3">
            </div>
            <div>
                <DataTable class="display table table-striped table-hover my-3" :options="options">
                    <thead class="table-light">
                        <tr>
                            <th>Id</th>
                            <th>Rol</th>
                            <th>Rut</th>
                            <th>Nombre</th>
                            <th>Email</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="item in usuarios" :key="item.id">
                            <td>{{ item.id }}</td>
                            <td>{{ item.roles.map(e => e.name).toString() }}</td>
                            <td>{{ item.rut }}</td>
                            <td>{{ item.nombre_user }} {{ item.apellido_user }}</td>
                            <td>{{ item.email }}</td>
                            <td>
                                <button @click="openDetailModal(item)" class="btn btn-sm btn-primary">Detalle</button>
                                <button @click="openEditModal(item)" class="btn btn-sm btn-warning mx-3">Editar</button>
                                <button @click="confirmarEliminacion(item.id)" class="btn btn-sm btn-danger">Eliminar</button>
                            </td>
                        </tr>
                    </tbody>
                </DataTable>
            </div>
            <UserDetailModal
                :show="showDetailModal"
                :user="selectedUser"
                @close="closeDetailModal"
            />
            <EditUserModal
                v-if="showEditModal"
                :user="selectedUser"
                :comunas="comunas"
                :roles="roles"
                :cursos="cursos"
                @close="closeEditModal"
            />
        </div>
    </AuthenticatedLayout>
</template>
