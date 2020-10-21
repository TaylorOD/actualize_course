<template>
  <div class="postsindex">
    <h1>All Posts</h1>
    <div class="row row-cols-1 row-cols-md-4">
      <div v-for="post in posts" class="col mb-4">
        <div class="card">
          <img v-bind:src="post.image" class="card-img-top" alt="">
          <div class="card-body">
            <h5 class="card-title">{{ post.title }}</h5>
            <p class="card-text">
              {{ post.body }}
            </p>
            <p>
              <a v-bind:href="`/posts/${post.id}`">more info</a>
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
      posts: [],
    };
  },
  created: function() {
    axios.get("/api/posts").then(response => {
      console.log("posts index", response);
      this.posts = response.data;
    });
  },
  methods: {},
};
</script>