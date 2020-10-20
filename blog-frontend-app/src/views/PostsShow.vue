<template>
  <div class="posts-show">
    <h1>Blog post:</h1>
      <h2>Title: {{ post.title }}</h2>
      <img v-bind:src="post.image" v-bind:alt="post.name" />
      <h2>Body: {{ post.body }}</h2>
      <router-link v-bind:to="`/posts/${post.id}/edit`"> Edit post </router-link> |
      <router-link to="/posts"> Back to all posts </router-link>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      post: {},
    };
  },
  created: function() {
    axios.get("/api/posts/" + this.$route.params.id).then(response => {
      console.log("posts show", response);
      this.post = response.data;
    });
  },
  methods: {},
};
</script>