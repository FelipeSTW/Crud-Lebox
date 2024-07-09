<script setup>
import { computed } from 'vue';
import { Link } from '@inertiajs/vue3';

const props = defineProps({
    href: {
        type: String,
        required: true,
    },
    active: {
        type: Boolean,
    },
});

const classes = computed(() =>
    props.active
        ? 'nav-link d-flex align-items-center border-bottom  border-3 border-primary-subtle rounded-start'
        : 'nav-link d-flex align-items-center'
);
</script>

<template>
    <Link :href="href" :class="classes">
        <slot />
    </Link>
</template>
