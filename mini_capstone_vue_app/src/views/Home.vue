<template>
  <div class="home">
    <h1>Create Product</h1>
    <div>
      Name:
      <input type="text" v-model="newProductName" />
      Description:
      <input type="text" v-model="newProductDescription" />
      Image URL:
      <input type="text" v-model="newProductImageURL" />
      Price:
      <input type="text" v-model="newProductPrice" />

      <button v-on:click="createProduct()">Create</button>
    </div>
    <h1>All Products</h1>
    <div v-for="product in products">
      <h2>Name: {{ product.name }}</h2>
      <img v-bind:src="product.image_url" v-bind:alt="product.name" />
      <p>Description: {{ product.description }}</p>
    </div>
  </div>
</template>

<style>
img {
  width: 200px;
}
</style>

<script>
import axios from "axios"

export default {
  data: function() {
    return {
      products: [],
      newProductName: "",
      newProductDescription: "",
      newProductImageURL: "",
      newProductPrice: "",
    }
  },
  created: function() {
    this.indexProducts()
  },
  methods: {
    indexProducts: function() {
      axios.get("/api/products").then(response => {
        console.log("All Products:", response.data)
        this.products = response.data
      })
    },
    createProduct: function() {
      console.log("Create the product...")
      var params = {
        name: this.newProductName,
        description: this.newProductDescription,
        price: this.newProductPrice,
        image_url: this.newProductImageURL,
      }
      axios
        .post("/api/products", params)
        .then(response => {
          console.log("Success", response.data)
          this.products.push(response.data)
        })
        .catch(error => console.log(error.response))
      ;(this.newProductName = ""),
        (this.newProductDescription = ""),
        (this.newProductImageURL = ""),
        (this.newProductPrice = "")
    },
  },
}
</script>
