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





      <footer id="footer">
        <div class="inner">
          <section>
            <h2>Get in touch</h2>
            <form method="post" action="#">
              <div class="fields">
                <div class="field half">
                  <input type="text" name="name" id="name" placeholder="Name" />
                </div>
                <div class="field half">
                  <input type="email" name="email" id="email" placeholder="Email" />
                </div>
                <div class="field">
                  <textarea name="message" id="message" placeholder="Message"></textarea>
                </div>
              </div>
              <ul class="actions">
                <li><input type="submit" value="Send" class="primary" /></li>
              </ul>
            </form>
          </section>
        </div>
      </footer>


  </div>
</template>

<style>

</style>
