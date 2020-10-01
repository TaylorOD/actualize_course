// Write a method that prints out the numbers 1 to 1000 that are divisible by 3.

// function printNumbersDivisibleByThree() {
//   var index = 1;
//   while (index <= 1000) {
//     if (index % 3 === 0) {
//       console.log(index);
//     }
//     index += 1;
//   }
// }
// printNumbersDivisibleByThree();

// Write a method that accepts an array of strings and prints out every other string.

// function printEveryOtherItem(strings) {
//   var index = 0;
//   strings.forEach(function (string) {
//     if (index % 2 === 0) {
//       console.log(string);
//     }
//     index += 1;
//   });
// }
// printEveryOtherItem(["a", "b", "c", "d", "e"]);

// Write a method that accepts an array of numbers and returns the sum.

// function computeSum(numbers) {
//   var sum = 0;
//   numbers.forEach(function (number) {
//     sum += number;
//   });
//   return sum;
// }
// console.log(computeSum([2, 4, 5]));

// Start with the hash: city_populations = {chi: 2700000}
// Add populations to the city_populations hash for New York City (8.4 million) and San Francisco (800,000).
// The result should be: {chi: 2700000, nyc: 8400000, sf: 800000}

// var cityPopulations = {
//   chi: 2700000
// };
// cityPopulations["nyc"] = 8400000;
// cityPopulations.sf = 800000; // same as cityPopulations["sf"]
// console.log(cityPopulations);

// Write a method that prints out every number from 1 to 100.

// let index = 1
// while (index <= 10) {
//   console.log(index)
//   index += 1
// }

// Write a method that prints out every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99).

// Isaiah did this one

// Write a method that accepts an array of numbers as a parameter, and counts how many 55’s there are in the array.

// let numbers = [1, 2, 3, 4, 55, 55]

// const howManyFiftyFive = function (number) {
//   let index = 0
//   let count = 0
//   while (index < number.length) {
//     if (number[index] === 55) {
//       count++
//     }
//     index++
//   }
//   console.log(count)
// }

// howManyFiftyFive(numbers)

// Write a method that accepts an array of strings and returns a new array that has the string "awesomesauce" inserted between every string.
// For example, if the initial array is ["a", "b", "c", "d", "e"], then the returned array should be ["a", "awesomesauce", "b", "awesomesauce", "c", "awesomesauce", "d", "awesomesauce", "e"].

// Isaiah did this one

// Start with the hash: item_amounts = {chair: 5, table: 2}
// Someone just bought two chairs. Change the hash such that the chair amount is 3.
// The final result should be: {chair: 3, table: 2}

// let itemAmounts = {
//   chair: 5,
//   table: 2
// }
// itemAmounts.chair = 3
// console.log(itemAmounts)

// Start with the hash: item_amounts = {chair: 5, table: 2}
// You received 7 desks to sell. Change the hash to include desks.
// The final result should be: {chair: 5, table: 2, desk: 7}

// Isaiah did this one

// Write a method that accepts a number and returns its factorial.
// For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.

// const factorial = function (number) {
//   let index = number - 1
//   let factorial = number
//   while (index >= 1) {
//     factorial = factorial * index
//     index--
//   }
//   console.log(factorial)
// }

// factorial(5)

// Write a method that accepts two arrays of numbers, and prints the sum of every combination of numbers from first and second array.
// For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should print a list: 101, 501, 1001, 105, 505, 1005, 110, 510, 1010].

// let numbers1 = [1, 5, 10]
// let numbers2 = [100, 500, 1000]

// const sumOfArrays = function (firstArray, secondArray) {
//   let combinationArray = []
//   let index1 = 0
//   while (index1 < firstArray.length) {
//     let index2 = 0
//     while (index2 < secondArray.length) {
//       combinationArray.push(firstArray[index1] + secondArray[index2])
//       index2++
//     }
//     index1++
//   }
//   console.log(combinationArray)
// }

// sumOfArrays(numbers1, numbers2)

//  Write a function that accepts an array of strings and returns a new array containing every other string from the original array.
//  For example, if the input is ["a", "b", "c", "d", "e", "f"], the output should be ["a", "c", "e"].

// let strings = ["a", "b", "c", "d", "e", "f"]

// const everyOther = function (string) {
//   let result = []
//   let index = 0
//   while (index < string.length) {
//     if (index % 2 === 0) {
//       result.push(string[index])
//     }
//     index += 1
//   }
//   return result
// }

// console.log(everyOther(strings))

//  Write a method that accepts one argument - an array of numbers. The method should return the greatest number.
//  For example, if the input is [5, 4, 8, 1, 2], the output should be 8.

// const greatestNumber = function (number) {
//   let index = 0
//   let max = number[0]
//   while (index < number.length) {
//     if (number[index] > max) {
//       max = number[index]
//     }
//     index++
//   }
//   return max
// }

// console.log(greatestNumber([5, 4, 8, 1, 2]))

// Write a method that accepts a number and returns its factorial.
// For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.

// const factorial = function (number) {
//   let result = 1
//   let currentNumber = number
//   while (currentNumber > 0) {
//     result = result * currentNumber
//     currentNumber--
//   }
//   return result
// }
// console.log(factorial(5))

//  Write a method that accepts one argument - an array of numbers that are in ascending order.
//  The method that returns a new array with the same values in descending order.
//  However, do not use the "reverse" method built into Ruby.

// const reserseArray = function (number) {
//   let result = []
//   let index = number.length - 1
//   while (index >= 0) {
//     result.push(number[index])
//     index -= 1
//   }

//   return result
// }

// console.log(reserseArray([1, 3, 5, 6, 100]))

// Write a method that accepts two arrays of numbers, and returns an array of every sum of every combination of single numbers from the first and second array.
//  For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should return this array: [101, 501, 1001, 105, 505, 1005, 110, 510, 1010].

const addTwoArrays = function (number1, number2) {
  let result = []
  let index1 = 0
  while (index1 < number1.length) {
    let index2 = 0
    while (index2 < number2.length) {
      result.push(number1[index1] + number2[index2])
      index2 += 1
    }
    index1 += 1
  }
  return result
}

console.log(addTwoArrays([1, 5, 10], [100, 500, 1000]))
