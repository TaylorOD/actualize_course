<template>
  <div id="wrapper">
  
     <header id="header">
        <div class="inner">
            <a class="logo">
              <router-link to="/">Home</router-link> |
              <router-link to="/signup">Signup</router-link> |
              <router-link to="/login">Login</router-link> |
              <router-link to="/logout">Logout</router-link>
            </a>
        </div>
      </header>

    <router-view/>

  </div>
</template>

<style>

</style>
