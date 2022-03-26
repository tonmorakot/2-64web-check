<template>
  <v-app class="app">
    
      <Header/>
    
  <router-view></router-view>
<br>
<br>

    <v-footer
    color="grey darken-4">
      <v-row
      justify="center"
      no-gutters
    >
      <v-col
        class="py-4 text-center white--text"
        cols="12"
      >
        {{ new Date().getFullYear() }} — <p>Copyright © Rajamangala University of Technology Lanna Phitsanulok</p>
      </v-col>
    </v-row>
  </v-footer>
     
  </v-app>
</template>

<script>

import Header from './components/Header.vue';
//import Footer from './components/Footer.vue';

export default {
  name: 'App',
  components: {
    Header,
 
  },

  data: () => ({
    
    }
  ),
};
</script>

<style scoped>
  @import url('https://fonts.googleapis.com/css2?family=Prompt&display=swap');
#app {
  font-family: 'Prompt', sans-serif;
  background-color: #FFFBE6 !important;
  
}

</style>