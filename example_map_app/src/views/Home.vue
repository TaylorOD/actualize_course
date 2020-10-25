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
      message: "Look at me!",
      places: [],
      
    }
  },
  created: function () {
    this.indexPlaces()
  },
  mounted: function () {
    mapboxgl.accessToken = process.env.VUE_APP_MAPBOX_ACCESS_TOKEN;
    var map = new mapboxgl.Map({
      container: 'map', // container id
      style: 'mapbox://styles/mapbox/streets-v11', // style URL
      center: [-74.5, 40], // starting position [lng, lat]
      zoom: 9 // starting zoom
    });
    var marker = new mapboxgl.Marker()
      .setLngLat([30.5, 50.5])
      .setPopup(popup)
      .addTo(map);
    var popup = new mapboxgl.Popup({ offset: 25 })
      .setText("Construction on the Washington Monument began in 1848.");

  },
  
  methods: {
    indexPlaces: function () {
      this.places = [
        {},
        {},
      ]
    },
  },

}
</script>
