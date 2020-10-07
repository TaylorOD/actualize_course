var app = new Vue({
  el: "#app",
  data: function () {
    return {
      message: "Welcome to the calculator!",
      firstNumber: 0,
      secondNumber: 0,
      thirdNumber: 0,
      sum: 0,
      product: 0,
      showExtraInfo: true,
      dimExtraInfo: true,
      numbers: ["1", "2", "4"],
      newNumber: "",

    };
  },
  methods: {
    calculateSum: function () {
      this.sum = parseInt(this.firstNumber) + parseInt(this.secondNumber) + parseInt(this.thirdNumber)
    },
    calculateProduct: function () {
      this.product = parseInt(this.firstNumber) * parseInt(this.secondNumber) * parseInt(this.thirdNumber)
    },
    toggleExtraInfo: function () {
      this.showExtraInfo = !this.showExtraInfo;
    },
    toggleDimExtraInfo: function () {
      this.dimExtraInfo = !this.dimExtraInfo;
    },
    addNewNumber: function () {
      this.numbers.push(this.newNumber)
    }
  }
});