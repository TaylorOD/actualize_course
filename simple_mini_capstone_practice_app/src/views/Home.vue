<template>
  <div class="home">
    <h1> All Products!</h1>
    <h1>New Product:</h1>
    Name: <input type="text" v-model="newProductName">
    Description: <input type="text" v-model="newProductDescription">
    Image URL: <input type="text" v-model="newProductImage">
    Price: <input type="text" v-model="newProductPrice">
    <button v-on:click="createProduct()">Create Product</button>

    <div v-for="product in products">
        <h1>{{ product.name }}</h1>
        <img v-bind:src="product.image_url" v-bind:alt="product.name">
        <p>Description: {{ product.description }}</p>
        <p>Price: {{ product.total }}</p>

        <button v-on:click="showProduct(product)">More Info</button>
    </div>
      <dialog id="product-details">
        <form method="dialog">
          <h1>Product Info</h1>
          <p>Description: {{ currentProduct.description }}</p>
          <p>Price: {{ currentProduct.total }}</p>
          <button>Close</button>
        </form>
      </dialog>
  </div>
</template>

<style></style>

<script>

import axios from "axios";

export default {
  data: function() {
    return {
      products: [],
      newProductName: "",
      newProductDescription: "",
      newProductImage: "",
      newProductPrice: "",
      currentProduct: {},
    }
  },
  created: function() {
    this.indexProducts() 
  },
  methods: {
    indexProducts: function() {
      axios
        .get("api/products")
        .then(response => {
          console.log("products index", response)
          this.products = response.data
        })
    },
    createProduct: function() {
      var params = {
        name: this.newProductName,
        description: this.newProductDescription,
        image_url: this.newProductImage,
        price: this.newProductPrice
      }
      axios
        .post("api/products", params)
        .then(response => {
          console.log("products create", response)
          this.products.push(response.data)
          this.newProductName = ""
          this.newProductDescription = ""
          this.newProductImage = ""
          this.newProductPrice = ""
        })
        .catch(error => {
          console.log("products create error", error.response)
        })
    },
    showProduct: function(product) {
      this.currentProduct = product
      document.querySelector("#product-details").showModal()
    },
  },
}
</script>
