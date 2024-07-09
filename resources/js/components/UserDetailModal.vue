<!-- UserDetailModal.vue -->
<template>
    <div v-if="show" class="modal fade show" style="display: block;" aria-modal="true" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Detalles del Usuario</h5>
            <button type="button" class="btn-close" @click="closeModal"></button>
          </div>
          <div class="modal-body">
            <p><strong>Nombre:</strong> {{ user.nombre_user }}</p>
            <p><strong>Apellido:</strong> {{ user.apellido_user }}</p>
            <p><strong>Dirección:</strong> {{ user.direccion }}</p>
            <p><strong>RUT:</strong> {{ user.rut }}</p>
            <p><strong>Email:</strong> {{ user.email }}</p>
            <p><strong>Comuna:</strong> {{ user.comuna_nombre }}</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" @click="closeModal">Cerrar</button>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      show: Boolean,
      user: Object
    },
    methods: {
      closeModal() {
        this.$emit('close');
      }
    }
  };
  </script>
  
  <style scoped>
  .modal {
    display: block;
    background: rgba(0, 0, 0, 0.5);
  }
  </style>
  