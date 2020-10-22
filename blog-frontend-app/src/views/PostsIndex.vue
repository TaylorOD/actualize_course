<template>
  <div class="postsindex">
    <h1>All My Posts</h1>
    <div class="row row-cols-1 row-cols-md-4">
      <div v-if="currentPost.is_owner" v-for="currentPost in currentPost" class="col mb-4">
        <div class="card">
          <img v-bind:src="currentPost.image" class="card-img-top" alt="">
          <div class="card-body">
            <h5 class="card-title">{{ currentPost.title }}</h5>
            <p class="card-text">
              {{ currentPost.body }}
            </p>
            <p>
              <a v-bind:href="`/posts/${currentPost.id}`">more info</a>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>


<script>
import axios from "axios";
import Vue2Filters from "vue2-filters";

export default {
  mixins: [Vue2Filters.mixin],
  data: function() {
    return {
      searchFilter: "",
      currentPost: []
    };
  },
  created: function() {
    axios.get("/api/posts").then(response => {
      console.log("posts index", response);
      this.currentPost = response.data;
    });
  },
  methods: {},
};
</script>