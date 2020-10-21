<template>
  <div class="post-edit">
    <form v-on:submit.prevent="updatePost()"> 
      <h1>Post edit</h1>
      <ul>
        <li class="text-danger" v-for="error in errors">{{ error }}</li>
      </ul>
      <div class="form-group">
        <label>Title:</label> 
        <input type="text" class="form-control" v-model="post.title">
      </div>
      <div class="form-group">
        <label>Body:</label> 
        <input type="text" class="form-control" v-model="post.body">
      </div>
      <div class="form-group">
        <label>Image:</label> 
        <input type="text" class="form-control" v-model="post.image">
      </div>
      <input type="submit" class="btn btn-primary" value="Submit">
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      post: {},
      errors: [],
    };
  },
  created: function() {
    this.showPost()
  },
  methods: {
    showPost: function () {
      axios.get("/api/posts/" + this.$route.params.id).then((response) => {
        console.log("One Post:", response.data);
        this.post = response.data;
      });
    },
    updatePost: function() {
      var params = {
        title: this.post.title,
        body: this.post.body,
        image: this.post.image,
      };
      axios
        .patch("/api/posts/" + this.post.id, params)
        .then(response => {
          console.log("posts update", response);
          this.$router.push("/posts");
        })
        .catch(error => {
          this.errors = error.response.data.errors;
        });
    }
  }
};
</script>