<template>
<div class="template">
  <br><br>
 <v-container class="pt-15">
   <v-row>
     <v-col lg="5"><br>
       <h1 class="intro-text">เว็บแอปพลิเคชันวินิจฉัยโรคของใบพริก และการป้องกันเบื้องต้น</h1>
        <p class="description">ตัวช่วยในการวินิจฉัยโรคของใบพริกที่รวดเร็ว และประหยัดเวลามากขึ้น
          เหมาะสำหรับผู้ที่สนใจเกี่ยวกับโรคของใบพริก และเกษตรกรที่ปลูกพริกทุกคน
        </p>
        <v-btn
        color="success" 
        class="white--text mr-10" 
        rounded
        >
        <a class="btn" href="http://localhost:8080/disease">เริ่มต้นวินิจฉัยโรค</a>
        </v-btn>
       
     </v-col>
     
     <v-col lg="6">
      <img width="150%" src="./../assets/img-bg.png" alt="">
     </v-col>
   </v-row>
   
 </v-container>
</div>
</template>

<script>


export default {
  
}
</script>

<style lang="scss" scoped>

  h1.intro-text {
    font-size: 40px;
    font-weight: 800;
    font-family: cursive;
    color: #131313ba;
}
  p.description {
    font-size: 19px;
    font-family: cursive;
    margin: 18px 0px;
    color: #444444ba;
  }
  template {
     background-color: #FFFBE6 !important;
  }

a.btn{
      font-size:  14px;
      transition: 0.5s ease all;
      padding-bottom: 4px;
      border-bottom: 1px solid transparent;
      color: #ffffff;

      list-style: none;
      text-decoration: none;
    }
</style>