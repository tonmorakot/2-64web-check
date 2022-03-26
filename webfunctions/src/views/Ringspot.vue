<template>
    <div>
    <br><br><br><br>
        <v-container>
            <v-row justify="center">
            
            <v-img src="./../assets/five.png" alt="five"
            max-width="100%"></v-img>
            </v-row>

             <br><br>

             <h3 class="text-center"> {{ ring }} </h3> 
             <h5 class="text-center">สาเหตุเกิดจาก เชื้อไวรัส Capsicum chlorosis virus, CaCV 
             <br> Watermelon silver mottle virus (WSMoV) 
             <br> Melon yellow spot virus (MYSV)
             <br> Tomato necrotic ringspot virus (TNRV)
             <br> Genus : Tospovirus
            </h5>
                <br>

                 <div>
            <v-container>
        <v-row justify="center">
            <v-col lg="6">
                <v-img src="./../assets/ringspot.png" alt="ringspot"
                max-width="100%"></v-img> <br>
                <p subtitle-1 class="text-center">อ้างอิงรูปภาพ: <a href="http://microorganism.expertdoa.com/disease_1-%E0%B9%82%E0%B8%A3%E0%B8%84%E0%B8%88%E0%B8%B8%E0%B8%94%E0%B8%A7%E0%B8%87%E0%B9%81%E0%B8%AB%E0%B8%A7%E0%B8%99.php">
          กรมวิชาการเกษตร</a></p>
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
         {{ sp }}
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
            {{ ot }}
        </v-card-text>
    
        </v-card>
        <br>
        
            <h5 class="text-center"> วิดีโอเพิ่มเติม</h5> 
            <br>
            <v-row justify="center"> 
            <iframe width="560" height="315" src="https://www.youtube.com/embed/xeIAr25rlBM" 
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
    name: 'Ringspot',
    
    data() {
        return {
            ring:[],
            sp:[],
            ot:[],
        }
            
    },

    mounted() {
        axios.get('http://localhost:3000/api/disease/name/5')
        .then((resp) => {
        this.ring = resp.data.data.d_name
        })
        axios.get('http://localhost:3000/api/disease/name/5')
        .then((resp) => {
        this.sp = resp.data.data.d_details
        })
        axios.get('http://localhost:3000/api/disease/name/5')
        .then((resp) => {
        this.ot = resp.data.data.d_protect  
        
    })
    }
}
</script>


<style scoped>

</style>