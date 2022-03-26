<template>
    <div>
    <br><br><br><br>
        <v-container>
            <v-row justify="center">
            
            <v-img src="./../assets/one.png" alt="one"
            max-width="100%"></v-img>
            </v-row>

             <br><br>
             <h3 class="text-center"> {{ result }} </h3> 
             <h5 class="text-center">สาเหตุเกิดจาก เชื้อไวรัส 
		Pepper yellow left curl virus (PeYLCV) <br>
		Tomato yellow leaf curl virus (TYLCV) <br>
		Genus : Begomovirus
            </h5>
                <br>
        <div>
            <v-container>
        <v-row justify="center">
            <v-col lg="6">
                <v-img src="./../assets/yellows.jpg" alt="yellows"
                max-width="100%"
          ></v-img>
            </v-col>
            <v-col lg="6">
                <v-img src="./../assets/yellow.jpg" alt="yellow"
                max-width="100%"
          ></v-img>
            </v-col>
            <p subtitle-1>อ้างอิงรูปภาพ: <a href="https://www.opsmoac.go.th/yala-warning-files-402891791275">
            https://www.opsmoac.go.th/yala-warning-files-402891791275</a></p>
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
         {{ yellow }}
    </v-card-text>
     </v-card> 
            <br>
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
            {{ p }}
        </v-card-text>
        </v-card>
         <br>
        
            <h5 class="text-center"> วิดีโอเพิ่มเติม</h5> 
            <br>
            <v-row justify="center"> 
            <iframe width="560" height="315"  src="https://www.youtube.com/embed/qygRe4Mmv10" 
            title="YouTube video player" frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen></iframe> <br>
            </v-row>

    </v-container>
</div>
</template>

<script>

import axios from "axios";

export default {
    name: 'Yellowdisease',
    
    data() {
        return {
        yellow: [],
        result: [],
        p:[],
        }
       
    },
     mounted() {
      axios.get('http://localhost:3000/api/disease/name/1')
      .then((resp) => {
        this.yellow = resp.data.data.d_details
        // console.log(resp.data.data)
      })
      axios.get('http://localhost:3000/api/disease/name/1')
      .then((resp) => {
        this.result = resp.data.data.d_name
        // console.log(resp.data.data.d_name)
      })
      axios.get('http://localhost:3000/api/disease/name/1')
      .then((resp) => {
        this.p = resp.data.data.d_protect
        // console.log(resp.data.data.d_name)
      })
}
}
</script>


<style scoped>

</style>