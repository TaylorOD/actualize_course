/* global Vue */

var app = new Vue({
  el: "#app",
  data: function () {
    return {
      message: "Hello from PoopyScript!",
      name: "Taylor",
      job: "Inventor of poopyscript"
    };
  },
  methods: {
    changeName: function () {
      this.name = "Nathan"
    }
  }
});