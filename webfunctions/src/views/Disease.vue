<template>
<div class="disease">
    <v-container>
  <v-contant>
    <br><br><br><br>
      <Diagnose/>
  </v-contant>
    </v-container>
</div>
</template>

<script>

  import Diagnose from '../components/Diagnose.vue';

  export default {
    name: 'Disease',
    components: {
        Diagnose
    }
    
  }
</script>

<style>

</style>
