<template>
  <div class="home" id="main">
        <div class="inner">
          
          <h2>All Products</h2>
          
          <section class="tiles">            
            <article class="style1" v-for="product in products">
              <span class="image">
                <img src="images/pic01.jpg" alt="product.name" />
              </span>
              <a v-on:click="showProduct(product)">
                <h3>{{ product.name }}</h3>
                <div class="content">
                  <p>{{ product.description }}</p>
                </div>
              </a>
            </article>
          </section>
          
      </div>

    <div v-for="product in products">
      <img v-bind:src="product.image_url" v-bind:alt="product.name" />
    </div>

     <dialog id="product-details">
        <form method="dialog">
          <h1>Product info</h1>
          <p>Name: <input type="text" v-model="currentProduct.name"></p>
          <p>Description: <textarea v-model="currentProduct.description"></textarea></p>
          <p>Price: {{ currentProduct.total }}</p>
          <button v-on:click="updateProduct(currentProduct)">Update</button>
          <button v-on:click="destroyProduct(currentProduct)">Destroy</button>
          <button>Close</button>
        </form>
    </dialog>

  </div>
</template>



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
