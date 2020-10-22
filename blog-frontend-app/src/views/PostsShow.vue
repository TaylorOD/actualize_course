<template>
  <div class="posts-show">
    <div class="card mb-3" style="max-width: 540px;">
      <div class="row no-gutters">
        <div class="col-md-4">
          <img v-bind:src="currentPost.image_url" class="card-img" alt="">
        </div>
        <div class="col-md-8">
          <div class="card-body">
            <h5 class="card-title">Title: {{ currentPost.title }}</h5>
            <img v-bind:src="currentPost.image" class="card-img-top" alt="">            
            <p class="card-text">Body: {{ currentPost.body }}</p>
            <a class="btn btn-primary btn-block" v-if="currentPost.is_owner" v-bind:href="`/posts/${currentPost.id}/edit`">Edit post</a>
            <button class="btn btn-primary btn-block" v-if="currentPost.is_owner" v-on:click="destroyPost(post)">Destroy post</button>
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
      currentPost: {}
    };
  },
  created: function() {
    axios.get("/api/posts/" + this.$route.params.id).then(response => {
      console.log("posts show", response);
      this.currentPost = response.data;
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