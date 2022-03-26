<template>
    <div class="details">
      <v-container><br> <br>
          <p class="intro-text text-center">การใช้งานเว็บแอปพลิเคชัน</p> 
         
        <v-row class="row">
            <v-col lg="6">
                <v-img width="150%" src="./../assets/img-bg.png" alt=""></v-img>
            </v-col>
                
            <v-col lg="6">
                <p>ก่อนจะทำการวินิจฉัยโรคของใบพริก ให้ผู้ใช้งานทำการสังเกตุอาการของใบพริกที่ตัวเองได้ปลูกไว้ก่อน</p>
            <v-list>
                <v-list-item>
                    <v-icon color="success" class="mr-1">mdi-numeric-1</v-icon>
                    <v-list-item-subtitle> เลือกลักษณะใบพริกตามหัวข้อต่างๆ ให้ครบทุกช่อง</v-list-item-subtitle>
                   
                </v-list-item>
                <v-list-item>
                    <v-icon color="success" class="mr-1">mdi-numeric-2</v-icon>
                    <v-list-item-subtitle> หลังจากเลือกเสร็จแล้วให้กดปุ่มวินิจฉัยโรค</v-list-item-subtitle>
                </v-list-item>
                <v-list-item>
                    <v-icon color="success" class="mr-1">mdi-numeric-3</v-icon>
                    <v-list-item-subtitle> จะมีหน้าแสดงผลข้อมูลของโรค และวิธีการป้องกัน</v-list-item-subtitle>
                </v-list-item>
                <v-list-item>
                    <v-list-item-subtitle>ผู้ใช้งานจะสามารถดูข้อมูลของโรค และวิธีการป้องกันได้ต้องทำการวินิจฉัยโรคทุกครั้ง</v-list-item-subtitle>
                </v-list-item>
            </v-list>
               
             <v-btn outlined color="success" class="white--text mr-10 " rounded>เริ่มต้นวินิจฉัยโรค</v-btn>

            </v-col>
        </v-row>
    </v-container>
   
    </div>
</template>

<script>
export default {
    name: "Details"
}
</script>

<style scoped>
p.intro-text {
    font-size: 20px;
    font-weight: bolder;
    color: #356859 !important;
    /* background-color: #53815a;
    background-size: 100; */
}
p.sub-text {
    font-size: 15px;
    font-weight: bolder;
    color: #333333ba;
}



</style>