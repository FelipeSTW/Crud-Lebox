<script setup>
    defineProps([
        'titulo'
    ])

    function colorEmocion(item){
        if(item == "Tristeza"){
            return "badge bg-primary"
        }
        if(item == "Alegria"){
            return "badge bg-warning"
        }
        if(item == "Enojo"){
            return "badge bg-danger"
        }
        if(item == "Miedo"){
            return "badge bg-dark"
        }
    };

</script>

<template>
    <h5>
        <span  :class="colorEmocion(titulo)">
            {{ titulo }}
        </span>
    </h5>
</template>
