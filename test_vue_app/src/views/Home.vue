<template>
  <div class="home">
    <h1> All Places!</h1>
    <div v-for="place in places">
      <h2>Name: {{ place.name }}</h2>
      <p>Address: {{ place.address }}</p>
    </div>
  </div>
</template>

<style></style>

<script>
import axios from "axios"

export default {
  data: function() {
    return {
      places: []
    }
  },
  created: function() {
    this.indexPlaces()
  },
  methods: {
    indexPlaces: function() {
      axios.get("/api/places").then(response => {
        console.log("All Places:", response.data)
        this.places = response.data
      })
    },
  },
}
</script>
