<template>
  <div class="postsindex">
    <h1>All Posts</h1>
      Search posts: <input type="text" v-model="searchFilter">
      <!-- <div v-for="post in posts" class="col mb-4"> -->
      <div v-for="post in filterBy(posts, searchFilter, 'title')" class="col mb-4">
      <h2>Name: {{ post.title }}</h2>
      <img v-bind:src="post.image" v-bind:alt="post.name" />
      <h2>Body: {{ post.body }}</h2>
      <router-link v-bind:to="`/posts/${post.id}`">More details</router-link>
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