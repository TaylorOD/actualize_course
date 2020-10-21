<template>
  <div class="home">
    <h1>New Post</h1>
    <div>
      Title: <input type="text" v-model="newPostTitle">
      Body: <input type="text" v-model="newPostBody">
      Image url: <input type="text" v-model="newPostImageUrl">
      <button v-on:click="createPost()">Create</button>
    </div>
    <h1>All posts</h1>
    <div v-for="post in posts">
      <h2>Title: {{ post.title }}</h2>
      <img v-bind:src="post.image_url" v-bind:alt="post.title">
      <p>Body: {{ post.body }}</p>
      <button v-on:click="showPost(post)">More info</button>
    </div>

    <dialog id="post-details">
      <form method="dialog">
        <h1>Post info</h1>
        <p>Title: <input type="text" v-model="currentPost.title"></p>
        <p>Chef: <input type="text" v-model="currentPost.chef"></p>
        <p>Ingredients: <input type="text" v-model="currentPost.ingredients"></p>
        <p>Directions: <input type="text" v-model="currentPost.directions"></p>
        <p>Prep time: <input type="text" v-model="currentPost.prep_time"></p>
        <button v-if="currentPost.is_owner" v-on:click="updatePost(currentPost)">Update</button>
        <button v-if="currentPost.is_owner" v-on:click="destroyPost(currentPost)">Destroy</button>
        <button>Close</button>
      </form>
    </dialog>

  </div>
</template>

<style>
img {
  width: 200px;
}
</style>

<script>
import axios from "axios";
export default {
  name: "Home",
  data: function () {
    return {
      posts: [],
      newPostTitle: "",
      newPostBody: "",
      newPostImage: "",
      currentPost: {},
    };
  },
  created: function () {
    this.indexPosts();
  },
  methods: {
    indexPosts: function () {
      axios.get("/api/posts").then((response) => {
        console.log("All posts:", response.data);
        this.posts = response.data;
      });
    },
    createRecipe: function () {
      console.log("Create the recipe...");
      var params = {
        title: this.newPostTitle,
        body: this.newPostBody,
        image:this.newPostImage,

      };
      axios
        .post("/api/posts", params)
        .then((response) => {
          console.log("Success", response.data);
          this.posts.push(response.data);
        })
        .catch((error) => console.log(error.response));
    },
    showPost: function (post) {
      console.log("Gonna show more info...", post);
      this.currentPost = post;
      document.querySelector("#post-details").showModal();
    },
    updatePost: function (post) {
      console.log("Update this post", post);
      var params = {
        title: post.title,
        chef: post.chef,
        ingredients: post.ingredients,
        directions: post.directions,
        image_url: post.image_url,
        prep_time: post.prep_time,
      };
      axios
        .patch("/api/posts/" + post.id, params)
        .then((response) => {
          console.log("Success", response.data);
        })
        .catch((error) => console.log(error.response));
    },
    destroyPost: function (post) {
      axios.delete("/api/posts/" + post.id).then((response) => {
        console.log("Success", response.data);
        // Remove this post from this.posts
        var index = this.posts.indexOf(post);
        this.posts.splice(index, 1);
      });
    },
  },
};
</script>

