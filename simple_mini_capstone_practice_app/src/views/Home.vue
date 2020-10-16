<template>
  <div class="home">
    <h1> All Products!</h1>
    <div v-for="product in products">
        <h1>{{ product.name }}</h1>
        <img v-bind:src="product.image_url" v-bind-alt="product.name">
        <p>Description: {{ product.description }}</p>
        <p>Price: {{ product.total }}</p>

    </div>
  </div>
</template>

<style></style>

<script>

import axios from "axios";

export default {
  data: function() {
    return {
      products: []
    }
  },
  created: function() {
    this.indexProducts() 
  },
  methods: {
    indexProducts: function() {
      axios.get("api/products").then(response => {
        console.log("products index", response)
        this.products = response.data
      })
    }
  },
}
</script>
