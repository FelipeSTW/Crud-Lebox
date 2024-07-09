

<template>
    <button type="button" :class=" buttonWidth ? buttonWidth : 'btn btn-success' " data-bs-toggle="modal" :data-bs-target="`#modal`+ index">
      {{ tituloBoton }}
    </button>

    <!-- Modal -->
    <div class="modal fade" data-bs-backdrop="static" :id="`modal`+ index" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg rounded-2 ">
        <div class="modal-content border-2 border-dark-subtle">
          <div class="modal-header">
            <h1 class="modal-title fs-4" id="exampleModalLabel">{{ titulo }}</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <slot> </slot>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>

          </div>
        </div>
      </div>
    </div>
  </template>





  <script>
  export default {
    props:[
      'titulo',
      'tituloBoton',
      'index',
      'buttonWidth'
    ]
  }
  </script>
