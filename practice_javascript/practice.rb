# Write a method that prints out the numbers 1 to 1000 that are divisible by 3.

# def print_numbers_divisible_by_three
#   index = 1
#   while index <= 1000
#     if index % 3 == 0
#       puts index
#     end
#     index += 1
#   end
# end

# print_numbers_divisible_by_three

# Write a method that accepts an array of strings and prints out every other string.

# def print_every_other_item(strings)
#   index = 0
#   strings.each do |string|
#     if index % 2 == 0
#       puts string
#     end
#     index += 1
#   end
# end

# print_every_other_item(["a", "b", "c", "d", "e"])

# Write a method that accepts an array of numbers and returns the sum.

# def compute_sum(numbers)
#   sum = 0
#   numbers.each do |number|
#     sum += number
#   end
#   return sum
# end

# puts compute_sum([2, 4, 5])

# Start with the hash: city_populations = {chi: 2700000}
# Add populations to the city_populations hash for New York City (8.4 million) and San Francisco (800,000).
# The result should be: {chi: 2700000, nyc: 8400000, sf: 800000}

# city_populations = { chi: 2700000 }
# city_populations[:nyc] = 8400000
# city_populations[:sf] = 800000
# p city_populations

# Write a method that prints out every number from 1 to 100.

# index = 1
# while index <= 10
#   p index
#   index += 1
# end

# Write a method that prints out every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99).

# Isaiah did this one

# Write a method that accepts an array of numbers as a parameter, and counts how many 55’s there are in the array.

# numbers = [1, 2, 3, 4, 55]

# def how_many_fiftyfive(number)
#   index = 0
#   count = 0
#   while index < number.length
#     if number[index] == 55
#       count += 1
#     end
#     index += 1
#   end
#   puts count
# end

# how_many_fiftyfive(numbers)

# Write a method that accepts an array of strings and returns a new array that has the string "awesomesauce" inserted between every string.
# For example, if the initial array is ["a", "b", "c", "d", "e"], then the returned array should be ["a", "awesomesauce", "b", "awesomesauce", "c", "awesomesauce", "d", "awesomesauce", "e"].

# Isaiah did this one

# Start with the hash: item_amounts = {chair: 5, table: 2}
# Someone just bought two chairs. Change the hash such that the chair amount is 3.
# The final result should be: {chair: 3, table: 2}

# item_amounts = { chair: 5, table: 2 }
# item_amounts[:chair] = 3
# p item_amounts

# Start with the hash: item_amounts = {chair: 5, table: 2}
# You received 7 desks to sell. Change the hash to include desks.
# The final result should be: {chair: 5, table: 2, desk: 7}

# Isaiah did this one

# Write a method that accepts a number and returns its factorial.
# For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.

# def factorial(number)
#   index = number - 1
#   factoriall = number
#   while index >= 1
#     factoriall = factoriall * index
#     index -= 1
#   end
#   puts factoriall
# end

# factorial(5)

# Write a method that accepts two arrays of numbers, and prints the sum of every combination of numbers from first and second array.
# For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should print a list: 101, 501, 1001, 105, 505, 1005, 110, 510, 1010].

# numbers1 = [1, 5, 10]
# numbers2 = [100, 500, 1000]

# def sum_of_arrays(first_array, second_array)
#   combination_array = []
#   index1 = 0
#   while index1 < first_array.length
#     index2 = 0
#     while index2 < second_array.length
#       combination_array << first_array[index1] + second_array[index2]
#       index2 += 1
#     end
#     index1 += 1
#   end
#   p combination_array
# end

# sum_of_arrays(numbers1, numbers2)

# Write a function that accepts an array of strings and returns a new array containing every other string from the original array.
# For example, if the input is ["a", "b", "c", "d", "e", "f"], the output should be ["a", "c", "e"].

# strings = ["a", "b", "c", "d", "e", "f"]

# def every_other(string)
#   result = []
#   index1 = 0
#   while index1 < string.length
#     if index1 % 2 == 0
#       result << string[index1]
#     end
#     index1 += 1
#   end
#   return result
# end

# p every_other(["a", "b", "c", "d", "e", "f"])

# Write a method that accepts one argument - an array of numbers. The method should return the greatest number.
# For example, if the input is [5, 4, 8, 1, 2], the output should be 8.

# def greatest_number(number)
#   index1 = 0
#   max = number[0]
#   while index1 < number.length
#     if number[index1] > max
#       max = number[index1]
#     end
#     index1 += 1
#   end
#   return max
# end

# p greatest_number([5, 4, 8, 1, 2])

# Write a method that accepts a number and returns its factorial.
# For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.

# def factorial(number)
#   index = number
#   fac = number[0]
#   while index > 0
#     fac *= index
#     index -= 1
#   end
#   return fac
# end

# p factorial(5)

# def factorial(number)
#   result = 1
#   current_number = number
#   while current_number > 0
#     result = result * current_number
#     current_number -= 1
#   end
#   return result
# end

# p factorial(5)

# Write a method that accepts one argument - an array of numbers that are in ascending order.
# The method that returns a new array with the same values in descending order.
# However, do not use the "reverse" method built into Ruby.

# def reverse_array(number)
#   reverse = []
#   index = number.length - 1
#   while index >= 0
#     reverse << number[index]
#     index -= 1
#   end
#   return reverse
# end

# p reverse_array([1, 2, 3, 4, 5])

# Write a method that accepts two arrays of numbers, and returns an array of every sum of every combination of single numbers from the first and second array.
# For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should return this array: [101, 501, 1001, 105, 505, 1005, 110, 510, 1010].

# def add_two_arrays(number1, number2)
#   result = []
#   index1 = 0
#   while index1 < number1.length
#     index2 = 0
#     while index2 < number2.length
#       result << number1[index1] + number2[index2]
#       index2 += 1
#     end
#     index1 += 1
#   end
#   return result
# end

# p add_two_arrays([1, 5, 10], [100, 500, 1000])

# Write a function that takes in an array of numbers and returns its sum.

# def sum_of_array(number)
#   sum = 0
#   index1 = 0
#   while index1 < number.length
#     sum = sum + number[index1]
#     index1 += 1
#   end
#   return sum
# end

# p sum_of_array([1, 288, 190])

# Write a function that takes in an array of strings and returns the smallest string.

# def smallest_string(strings)
#   shortest = strings[0]
#   index1 = 0
#   while index1 < strings.length
#     if strings[index1] < shortest
#       shortest = strings[index1]
#     end
#     index1 += 1
#   end
#   return shortest
# end

# p smallest_string(["taylor", "a", "cookie", "eating", "lakers"])

#  Write a function that takes in an array of numbers and returns a new array with the numbers in reverse order.

# def reverse_array(numbers)
#   result = []
#   index1 = numbers.length - 1
#   while index1 > 0
#     result << numbers[index1]
#     index1 -= 1
#   end
#   return result
# end

# p reverse_array([1, 2, 4, 7, 9, 19, 100])

# 4. Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.

# def a_strings(strings)
#   result = []
#   index1 = 0
#   while index1 < strings.length
#     if strings[index1][0].downcase == "a"
#       result << strings[index1]
#     end
#     index1 += 1
#   end
#   return result
# end
# p a_strings(["Apple", "Like", "Not", "Adam", "Atom"])

# 5. Write a function that takes in an array of strings and joins them together to make a single string separated by commas.

# def string_combiner(strings)
#   result = ""
#   index1 = 0
#   while index1 < strings.length
#     result << strings[index1]
#     if index1 == strings.length - 1
#       result << ""
#     else
#       result << ", "
#     end
#     index1 += 1
#   end
#   return result
# end

# p string_combiner(["Taylor", "Milk", "Basketball", "Lakers"])

# 6. Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).

# def product_of_numbers(numbers)
#   result = 1
#   index1 = 0
#   while index1 < numbers.length
#     result = result * numbers[index1]
#     index1 += 1
#   end
#   return result
# end

# p product_of_numbers([1, 2, 90, 39])

# 7. Write a function that takes in an array of numbers and returns the two smallest numbers.

# def two_smallest_number(numbers)
#   smallest = numbers[0]
#   second_smallest = numbers[1]
#   index1 = 0
#   while index1 < numbers.length
#     if numbers[index1] < smallest && numbers[index1] < second_smallest
#       smallest = numbers[index1]
#     elsif numbers[index1] < second_smallest && numbers[index1] > smallest
#       second_smallest = numbers[index1]
#     end
#     index1 += 1
#   end

#   result = []
#   result << smallest
#   result << second_smallest
#   return result
# end

# p two_smallest_number([1, 2, 5, 7, 9, 19, 15, 199])

# 8. Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.

# def zero_counter(numbers)
#   count = 0
#   index1 = 0
#   while index1 < numbers.length
#     if numbers[index1] == 0
#       count += 1
#     end
#     index1 += 1
#   end

#   return count
# end

# p zero_counter([1, 0, 9, 1, 0, 0, 1, 2, 3, 0])

# 9. Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.

# def larger_than_ten(numbers)
#   result = true
#   index1 = 0
#   while index1 < numbers.length
#     if numbers[index1] > 10 && result == true
#       result = true
#     else
#       result = false
#     end
#     index1 += 1
#   end
#   return result
# end

# p larger_than_ten([11, 11, 20, 24])

# 10. Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.

# def a_counter(words)
#   count = 0
#   words.each do |word|
#     word.each_char do |index|
#       if index == "a"
#         count += 1
#       end
#     end
#   end
#   return count
# end

# p a_counter(["adam", "lucas", "pushover", "aaron", "apple"])

# 11. Write a function that accepts a string and returns whether it’s a palindrome.

# 12. Write a function to generate/print/store the first "n" prime numbers.

# 13. Given a tic-tac-toe board (matrix of 3 x 3), write a function that can check to see whether X or O won.
