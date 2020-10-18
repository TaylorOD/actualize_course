<template>
  <div class="postsindex">
    <h1>All Posts</h1>
    <div v-for="post in posts">
      <h2>Title: {{ post.title }}</h2>
      <img v-bind:src="post.image" v-bind:alt="post.name" />
      <h2>Body: {{ post.body }}</h2>

    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
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