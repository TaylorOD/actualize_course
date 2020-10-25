<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <h2> Here's my map: </h2>
    <div id="map"></div>
    
  
  </div>
</template>

<style>
	#map { width: 100%; height: 300px }
</style>

<script>

export default {
  data: function () {
    return {
      message: "Look at me!"
    }
  },
  created: function () {},
  mounted: function () {
    mapboxgl.accessToken = process.env.VUE_APP_MAPBOX_ACCESS_TOKEN;
    var map = new mapboxgl.Map({
      container: 'map', // container id
      style: 'mapbox://styles/mapbox/streets-v11', // style URL
      center: [-74.5, 40], // starting position [lng, lat]
      zoom: 9 // starting zoom
    });
  },
  methods: {}

}
</script>
