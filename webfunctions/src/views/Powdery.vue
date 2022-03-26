<template>
    <div>
    <br><br><br><br>
        <v-container>
            <v-row justify="center">
            
            <v-img src="./../assets/two.png" alt="two"
            max-width="100%"></v-img>
            </v-row>
          <br><br>

             <h3 class="text-center"> {{ pow }} </h3> 
             <h5 class="text-center">สาเหตุเกิดจาก เชื้อรา Oidiopsis sp. <br>
            </h5>
                <br>
             <div>
            <v-container>
        <v-row justify="center">
            <v-col lg="6">
                <v-img src="./../assets/powdery.jpg" alt="powdery"
                max-width="100%"></v-img> <br>
                <p subtitle-1 class="text-center">อ้างอิงรูปภาพ: <a href="https://www.doa.go.th/share/attachment.php?aid=1195">
           คู่มือศัตรูพริก</a></p>
            </v-col>
        </v-row>
            </v-container>
        </div>
        <br>
         <v-card 
            elevation="2"
            title
            dark
        > 
        <v-card-title>
             ลักษณะอาการ
        </v-card-title>
        </v-card> 
      
        <v-card 
        elevation="2"
        title
    > 
    <v-card-text
        class="font-weight-black"
    >
         {{ de }}
    </v-card-text>
     </v-card> <br>

        <v-card 
        elevation="2"
        tile
        dark
        >
        <v-card-title 
        >
            วิธีการป้องกันและกำจัด  
        </v-card-title>
        </v-card>

        <v-card 
        elevation="2"
        title
        > 
        <v-card-text
        class="font-weight-black"
        >
            {{ ry }}
        </v-card-text>
    
        </v-card>
        <br>
        
            <h5 class="text-center"> วิดีโอเพิ่มเติม</h5> 
            <br>
            <v-row justify="center"> 
            <iframe width="560" height="315" src="https://www.youtube.com/embed/YdtBmO3yZj8" 
            title="YouTube video player" frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen></iframe><br>
            </v-row>

        </v-container>
    </div>
</template>

<script>

import axios from 'axios';

export default {
    name: 'Powdery',
   
    data() {
        return {
            pow:[],
            de:[],
            ry:[],
        }
    },

    mounted() {
         axios.get('http://localhost:3000/api/disease/name/2')
        .then((resp) => {
        this.pow = resp.data.data.d_name
      })
        axios.get('http://localhost:3000/api/disease/name/2')
        .then((resp) => {
        this.de = resp.data.data.d_details
      })
        axios.get('http://localhost:3000/api/disease/name/2')
        .then((resp) => {
        this.ry = resp.data.data.d_protect
      })
    }
}
</script>


<style scoped>

</style>