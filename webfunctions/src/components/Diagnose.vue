<template>
  <div class="diagnose">
    <v-container fluid>
      <v-row justify="center"> </v-row>
    </v-container>
    <br />
    <br />
    <v-container>
      <v-row justify="center">
        <br /><br />
        <h3>เลือกอาการบนใบพริก</h3>
      </v-row>
    </v-container>

    <v-container>
      <v-row align="center">
        <v-col class="d-flex" cols="12" sm="6">
          <v-select
            v-model="mlselect"
            :items="moreleaf"
            label="ลักษณะใบ"
            dense
            color="red darken-4"
          ></v-select>
        </v-col>

        <v-col class="d-flex" cols="12" sm="6">
          <v-select
            v-model="lfselect"
            :items="leafcolor"
            label="สีของใบ"
            dense
            color="red darken-4"
          ></v-select>
        </v-col>

        <v-col class="d-flex" cols="12" sm="6">
          <v-select
            v-model="wolselect"
            :items="woundonleaf"
            label="แผลบนใบ"
            dense
            color="red darken-4"
          ></v-select>
        </v-col>

        <v-col class="d-flex" cols="12" sm="6">
          <v-select
            v-model="wcselect"
            :items="woundcolor"
            label="สีของแผล"
            dense
            color="red darken-4"
          ></v-select>
        </v-col>
      </v-row>
    </v-container>
    <v-row justify="center">
      <v-btn rounded color="success" class="mr-4 mb-5" @click="cal()">
        วินิจฉัย
      </v-btn>
    </v-row>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "diagnose",

  data: () => ({
    mlselect: "",
    lfselect: "",
    wolselect: "",
    wcselect: "",

    moreleaf: [],
    leafcolor: [],
    woundonleaf: [],
    woundcolor: [],

    //เช็คค่าว่าง
    // cal: false,
    // mlselect: "",
    // moreleafRules: [
    //   v => !!v || ""],
    // lfselect: "",
    // leafcolorRules: [
    //   v => !!v || ""],
    // wolselect: "",
    // woundonleafRules: [
    //   v => !!v || ""],
    // wcselect: "",
    // woundcolorRules: [
    //   v => !!v || ""],

    //   desserts: []
  }),

  // เรียกข้อมูลมาแสดง select
  mounted() {
    axios.get("http://localhost:3000/api/moreleafs").then((resp) => {
      for (const key in resp.data.data) {
        this.moreleaf.push(resp.data.data[key].ml_name);
      }
    });
    axios.get("http://localhost:3000/api/leafcolors").then((resp) => {
      for (const key in resp.data.data) {
        this.leafcolor.push(resp.data.data[key].lf_name);
      }
    });
    axios.get("http://localhost:3000/api/woundonleafs").then((resp) => {
      for (const key in resp.data.data) {
        this.woundonleaf.push(resp.data.data[key].wol_name);
      }
    });
    axios.get("http://localhost:3000/api/woundcolors").then((resp) => {
      for (const key in resp.data.data) {
        this.woundcolor.push(resp.data.data[key].wc_name);
      }
    });
  },

  watch: {
    // เช็คการเปลี่ยนแปลง

    // ถ้าเลือกไม่มีแผล จะกำหนดไม่มีสีด้วย
    wolselect(newSelect, oldSelect) {
      if (newSelect === "ไม่มีแผล") {
        this.wcselect = "ไม่มีสี";
      } else if(oldSelect === "ไม่มีแผล" && this.wcselect === "ไม่มีสี"){
        this.wcselect = "";
      }
    },

    // ถ้าเลือกสี จะกำหนดให้มีแผล
    wcselect(newSelect) {
      if (newSelect !== "ไม่มีสี") {
        this.wolselect = "มีแผล";
      } else {
        this.wolselect = "ไม่มีแผล";
      }
    },
  },

  methods: {
    cal() {
      if (this.mlselect && this.lfselect && this.wolselect && this.wcselect) {
        console.log(this.mlselect);
        console.log(this.lfselect);
        console.log(this.wolselect);
        console.log(this.wcselect);

        /** Code วิเคราะห์ */

        /** Code end */
      } else {
        alert("กรุณาเลือกข้อมูลเพื่อวินิจฉัยให้ครบถ้วน");
      }
    },
  },
};
</script>

<style lang="scss" scoped>
a.submit {
  font-size: 14px;
  transition: 0.5s ease all;
  padding-bottom: 4px;
  border-bottom: 1px solid transparent;
  color: #1b863f;
  list-style: none;
  text-decoration: none;
}
</style>
