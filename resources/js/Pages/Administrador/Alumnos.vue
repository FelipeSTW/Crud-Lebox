<template>
    <AuthenticatedLayout>
        <div class="shadow-lg bg-light py-5 px-5 col-10 offset-1 my-5">
            <div class="d-flex justify-content-start">

                 <select class="form-select form-select-md"   name="" id="">
                    <option v-for="item in cursos" :value="item.id" :key="item.id">
                         {{ item.nombre_curso }}
                    </option>
                </select>

                <button class="btn btn-primary">Asignar curso</button>


            </div>

            <p>
                {{ usuarios }}
            </p>
            <p>
                {{ composicion_curso }}
            </p>
        </div>

    </AuthenticatedLayout>
</template>

<script setup>
    import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
    defineProps([
        'cursos',
        'composicion_curso',
        'usuarios'
    ])
</script>
