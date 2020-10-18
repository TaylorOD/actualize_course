<template>
  <div class="home">
    <h1>New Blog</h1>
  <div>
      Name: <input type="text" v-model="newPostName" />
      Width: <input type="text" v-model="newPostWidth" />
      Height: <input type="text" v-model="newPostHeight" />
      Url: <input type="text" v-model="newPostUrl" />
      <button v-on:click="createPost()">Create Post</button>
    </div>
    <h1>All Blogs</h1>
    <div v-for="post in posts">
      <h2>{{ post.title }}</h2>
      <img v-bind:src="post.image" v-bind:alt="post.name" />
      <p>Body: {{ post.body }}</p>
      <button v-on:click="showPost(post)">More info</button>
    </div>
      <dialog id="post-details">
        <form method="dialog">
          <h1>Post info</h1>
          <p>Name: <input type="text" v-model="currentPost.name" /></p>
          <p>Width: <input type="text" v-model="currentPost.width" /></p>
          <p>Height: <input type="text" v-model="currentPost.height" /></p>
          <p>Url: <input type="text" v-model="currentPost.url" /></p>
          <button v-on:click="updatePost(currentPost)">Update</button>
          <button v-on:click="destroyPost(currentPost)">Destroy Post</button>
          <button>Close</button>
        </form>
      </dialog>
  </div>
</template>
<style>
</style>
<script>
import axios from "axios";
export default {
  data: function() {
    return {
      posts: [],
      newPostName: "",
      newPostWidth: "",
      newPostHeight: "",
      newPostUrl: "",
      currentPost: {},
    };
  },
  created: function() {
    this.indexPosts();
  },
  methods: {
    indexPosts: function() {
      axios.get("/api/posts").then(response => {
        console.log("posts index", response);
        this.posts = response.data;
      });
    },
    createPosts: function() {
      var params = {
        name: this.newPostName,
        width: this.newPostWidth,
        height: this.newPostHeight,
        url: this.newPostUrl,
      };
      axios
        .post("/api/posts", params)
        .then(response => {
          console.log("posts create", response);
          this.posts.push(response.data);
          this.newPostName = "";
          this.newPostWidth = "";
          this.newPostHeight = "";
          this.newPostUrl = "";
        })
        .catch(error => {
          console.log("posts create error", error.response);
        });
    },
    showPost: function(post) {
      this.currentPost = post;
      document.querySelector("#post-details").showModal();
    },
    updatePost: function(post) {
      var params = {
        name: post.name,
        width: post.width,
        height: post.height,
        url: post.url,
      };
      axios
        .patch("/api/posts/" + post.id, params)
        .then(response => {
          console.log("posts update", response);
          this.currentPost = {};
        })
        .catch(error => {
          console.log("posts update error", error.response);
        });
    },
    destroyPost: function(photo) {
      axios.delete("/api/posts/" + post.id).then(response => {
        console.log("posts destroy", response);
        var index = this.posts.indexOf(post);
        this.posts.splice(index, 1);
      });
    },
  },
};
</script>