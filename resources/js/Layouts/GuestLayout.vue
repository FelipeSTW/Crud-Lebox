<script setup>
import { Link } from '@inertiajs/vue3';
</script>

<template>
    <div class="min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0 bg-gray-100">

        <div
            class="w-full sm:max-w-md mt-6 px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg">
            <img src="images/img_login.jpg"  alt="Logo de Virtual School">
            <slot />
        </div>
    </div>
</template>
<style>
.min-h-screen.flex.flex-col.sm\:justify-center.items-center.pt-6.sm\:pt-0.bg-gray-100 {
    background-image: url('/images/login.jpg');
    background-size: cover;
    background-position: center;
}

.transparent-bg {
  background-color: rgba(255, 255, 255, 0.8); /* Fondo blanco transparente */
}
.w-full.sm\:max-w-md.mt-6.px-6.py-4.bg-white.shadow-md.overflow-hidden.sm\:rounded-lg {
    background-color: rgba(255, 255, 255, 0.8);
}


</style>
