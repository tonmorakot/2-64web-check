import Vue from 'vue'
import VueRouter from 'vue-router'

import Home from '../views/Home.vue'
import Disease from '../views/Disease.vue'
import About from '../views/About.vue'
import Yellowdisease from '../views/Yellowdisease.vue'
import Powdery from '../views/Powdery.vue'
import Mottle from '../views/Mottle.vue'
import Frogeye from '../views/Frogeye.vue'
import Ringspot from '../views/Ringspot.vue'
import Bacterial from '../views/Bacterial.vue'


Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/disease',
    name: 'Disease',
    component: Disease
  },
  {
    path: '/about',
    name: 'About',
    component: About
  },
  {
    path: '/yellowdisease',
    name: 'Yellowdisease',
    component: Yellowdisease
  },
  {
    path: '/Powdery',
    name: 'Powdery',
    component: Powdery
  },
  {
    path: '/Mottle',
    name: 'Mottle',
    component: Mottle
  },
  {
    path: '/Frogeye',
    name: 'Frogeye',
    component: Frogeye
  },
  {
    path: '/Ringspot',
    name: 'Ringspot',
    component: Ringspot
  },
  {
    path: '/Bacterial',
    name: 'Bacterial',
    component: Bacterial
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
