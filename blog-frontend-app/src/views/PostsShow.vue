<template>
  <div class="posts-show">
    <div class="card mb-3" style="max-width: 540px;">
      <div class="row no-gutters">
        <div class="col-md-4">
          <img v-bind:src="post.image_url" class="card-img" alt="">
        </div>
        <div class="col-md-8">
          <div class="card-body">
            <h5 class="card-title">Title: {{ post.title }}</h5>
            <img v-bind:src="post.image" class="card-img-top" alt="">            
            <p class="card-text">Body: {{ post.body }}</p>
            <a class="btn btn-primary btn-block" v-bind:href="`/posts/${post.id}/edit`">Edit post</a>

            <button class="btn btn-primary btn-block" v-on:click="destroyPost(post)">Destroy post</button>
          </div>
        </div>
      </div>
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
  methods: {
    destroyPost: function(post) {
      axios.delete("/api/posts/" + post.id).then(response => {
        console.log("post destroy", response);
      });
      this.$router.push("/posts");
    },
  },
};
</script>