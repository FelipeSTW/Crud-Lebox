<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Head } from '@inertiajs/vue3';
</script>

<template>
    <Head title="Dashboard" />

    <AuthenticatedLayout>
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:ro unded-lg">
                    <div class="success-message p-6 rounded-lg bg-light text-black shadow-lg transform transition-transform duration-500 hover:scale-105">Te has logueado con éxito</div>

                </div>
            </div>
        </div>
    </AuthenticatedLayout>
</template>
<style>
.success-message {
    border: 3px solid gray; /* Color verde claro */
    font-weight: 600;          /* Hace el texto un poco más grueso */
        /* Para que el padding y el bo
    justrde afecten el tamaño de la caja */
    animation: slideIn 1s both;/* Animación personalizada */
    justify-content: center;
    text-align: center;

}


@keyframes slideIn {
    0% {
        opacity: 0;
        transform: translateY(-10px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}


</style>
