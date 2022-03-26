<template>
<v-container>
 <v-footer
    padless
    color="grey darken-4"
  >
    <v-row
      justify="center"
      no-gutters
    >
      <v-col
        class="py-4 text-center black--text"
        cols="12"
      >
        {{ new Date().getFullYear() }} — <strong>Copyright © Rajamangala University of Technology Lanna Phitsanulok</strong>
      </v-col>
    </v-row>
  </v-footer>
</v-container>
    
</template>

<script>
export default {
    data() {
        return {
            links: [
        'Home',
        'About Us',
        'Team',
        'Services',
        'Blog',
        'Contact Us',
      ],
        }
    }
}
</script>

<style scoped>
.sub-header {
    font-size: 20px;
    font-weight: bolder;
    color: #0e0e0eba;
}
</style>