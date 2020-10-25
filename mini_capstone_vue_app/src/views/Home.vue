<template>
  <div class="home" id="main">
        <div class="inner">
         
          <section class="tiles">
            <article class="style1" v-for="product in products">
              <span class="image">
                <img src="images/pic01.jpg" alt="" />
              </span>
              <a href="generic.html">
                <h2>{{ product.name }}</h2>
                <div class="content">
                  <p>{{ product.description }}</p>
                </div>
              </a>
            </article>
            
          </section>
      </div>

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
      Supplier:
      <input type="text" v-model="newProductSupplier" />
      <button v-on:click="createProduct()">Create</button>
    </div>
    <h1>All Products</h1>
    <div v-for="product in products">
      <h2>Name: {{ product.name }}</h2>
      <img v-bind:src="product.image_url" v-bind:alt="product.name" />
      <p>Description: {{ product.description }}</p>
      <button v-on:click="showProduct(product)">More Info</button>
    </div>

     <dialog id="product-details">
        <form method="dialog">
          <h1>Product info</h1>
          <p>Name: <input type="text" v-model="currentProduct.name"></p>
          <p>Description: <textarea v-model="currentProduct.description"></textarea></p>
          <p>Price: {{ currentProduct.tax }}</p>
          <p>Tax: {{ currentProduct.tax }}</p>
          <p>Total: {{ currentProduct.total }}</p>
          <button v-on:click="updateProduct(currentProduct)">Update</button>
          <button v-on:click="destroyProduct(currentProduct)">Destroy</button>
          <button>Close</button>
        </form>
    </dialog>

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
      newProductSupplier: "",
      currentProduct: {},
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
      var params = {
        name: this.newProductName,
        description: this.newProductDescription,
        price: this.newProductPrice,
        image_url: this.newProductImageURL,
        supplier_id: this.newProductSupplier,

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
      (this.newProductPrice = ""),
      (this.newProductSupplier)
    },
    showProduct: function (product) {
      this.currentProduct = product
      document.querySelector("#product-details").showModal();
    },
    updateProduct: function (product) {
      var params = {
        name: product.name,
        description: product.description,
      }
      axios
        .patch(`/api/products/${product.id}`, params)
        .then(response => {
          console.log("Success", response.data)
        })
        .catch(error => console.log(error.response))
    },
    destroyProduct: function (product) {
      axios
        .delete(`/api/products/${product.id}`)
        .then(response => {
          console.log("Success - product destroyed", response.data)
        })
        .catch(error => console.log(error.response))
        // remove this product from this.products / you dont have to reload page
      var index = this.products.indexOf(product);
      this.products.splice(index, 1);
    },
  },
}
</script>
