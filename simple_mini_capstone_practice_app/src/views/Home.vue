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
            Name: <input type="text" v-model="currentProduct.name">
            Description: <input type="text" v-model="currentProduct.description">
            Image URL: <input type="text" v-model="currentProduct.image_url">
            Price: <input type="text" v-model="currentProduct.price">
          <button v-on:click="destroyProduct(currentProduct)">Destroy Product</button>
          <button v-on:click="updateProduct(currentProduct)">Update Product</button>
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
    updateProduct: function(product) {
      var params = {
        name: product.name,
        description: product.description,
        image_url: product.image_url,
        price: product.price,
      }
      axios
        .patch(`api/products/${product.id}`, params)
        .then(response => {
          console.log("Product updated", response)
          this.currentProduct = {}
        })
        .catch(error => {
          console.log("products update error", error.response)
        })
    },
    destroyProduct: function(product) {
      axios
        .delete(`api/products/${product.id}`)
        .then(response => {
          console.log("Product destroy", response)
          var index = this.products.indexOf(product)
          this.products.splice(index, 1)
        })
    },
  },
}
</script>
