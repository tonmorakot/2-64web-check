<template>
    <v-container class="about">
        <div>
            <br><br><br><br>
            <v-row justify="center">

        <v-col lg="2">
         </v-col>
        
         <v-col lg="6">
  
         </v-col>

         <v-col lg="2">
         </v-col>

    <br>
    <br>
    <v-col lg="8">
    <v-carousel
    cycle
    height="400"
    hide-delimiter-background
    show-arrows-on-hover
  >
    <v-carousel-item
      v-for="(slide, i) in slides"
      :key="i"
    >
      <v-sheet
        :color="colors[i]"
        height="100%"
      >
        <v-row
          class="fill-height"
          align="center"
          justify="center"
        >
          <div class="text-h2">
            {{ slide }} Slide
          </div>
        </v-row>
      </v-sheet>
    </v-carousel-item>
  </v-carousel>
    </v-col>
        </v-row>
        </div>
    </v-container>
</template>

<script>
export default {
    name: 'About',
     components: {

     } ,
    data:() => ({
    
            colors: [
          'indigo',
          'warning',
          'pink darken-2',
          'red lighten-1',
          'deep-purple accent-4',
        ],
        slides: [
          'First',
          'Second',
          'Third',
          'Fourth',
          'Fifth',
        ],
     
    })
}

</script>

<style scoped>
 
.bg {
    background-color: rgb(255, 208, 0);
}
.image {
    margin: auto;
    width: 50;
    height: 50;
}
</style>