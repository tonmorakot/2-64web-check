<template>
    <div>
    <br><br><br><br>
        <v-container>
            <v-row justify="center">
            
            <v-img src="./../assets/six.png" alt="six"
            max-width="100%"></v-img>
            </v-row>
            
             <br><br>

             <h3 class="text-center"> {{ bac }} </h3> 
             <h5 class="text-center">สาเหตุเกิดจาก เชื้อแบคทีเรีย Xanthomonas vesiactoria (ex Doidge Vauterin etrl)
            </h5>
                <br>
                <div>
            <v-container>
        <v-row justify="center">
            <v-col lg="6">
                <v-img src="./../assets/bacterial.jpg" alt="bacterial"
                max-width="100%"></v-img> <br>
                <p subtitle-1 class="text-center">อ้างอิงรูปภาพ: <a href="https://m.facebook.com/erawanagri/posts/1683522121883493/">
           https://m.facebook.com/erawanagri/posts/1683522121883493/</a></p>
            </v-col>
            <v-col lg="6">
                <v-img src="./../assets/bacterials.jpeg" alt="bacterials"
                max-width="100%"></v-img><br>
                <p subtitle-1 class="text-center">อ้างอิงรูปภาพ: <a href="https://kasetgo.com/t/topic/10981">
         https://kasetgo.com/t/topic/10981</a></p>
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
         {{ te }}
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
            {{ rial }}
        </v-card-text>
    
        </v-card>
        <br>
        
            <h5 class="text-center"> วิดีโอเพิ่มเติม</h5> 
            <br>
            <v-row justify="center"> 
            <iframe width="560" height="315" src="https://www.youtube.com/embed/-eVmsjgZiFg" 
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
    name: 'Bacterial',
    
    data() {
        return {
            bac:[],
            te:[],
            rial:[]
        }
    },
    mounted() {
         axios.get('http://localhost:3000/api/moreleafs')
        .then((resp) => {
        this.bac = resp.data})
        axios.get('http://localhost:3000/api/disease/name/6')
        .then((resp) => {
        this.te = resp.data.data.d_details})
    axios.get('http://localhost:3000/api/disease/name/6')
        .then((resp) => {
        this.rial = resp.data.data.d_protect})
    }
}
</script>


<style scoped>

</style>