<template>
  <div class="home">
    <div>

    </div>
    <h1>All Public Posts</h1>
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
    createPost: function () {
      console.log("Create the post...");
      var params = {
        title: this.newPostTitle,
        body: this.newPostBody,
        image: this.newPostImage,
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
        body: post.body,
        image: post.image,
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

        var index = this.posts.indexOf(post);
        this.posts.splice(index, 1);
      });
    },
  },
};
</script>

