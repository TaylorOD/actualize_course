# strings = ["dog", "a", "cat", "hand", "cops"]

# def pair_strings(array)
#   paired_strings = []
#   index1 = 0
#   while index1 < array.length
#     index2 = 0
#     while index2 < array.length
#       if index1 != index2
#         if array[index1].length + array[index2].length == 8
#           paired_strings << array[index1]
#           paired_strings << array[index2]
#         end
#       end
#       index2 += 1
#     end
#     index1 += 1
#   end
#   return paired_strings
# end

# puts pair_strings(strings)

abc_string = "abcadefga"
a_string = "a"

def location_finder(string1, string2)
  index = 0
  while index < string1.length
    if string1[index] == string2[0]
      p index
    end
    index += 1
  end
end

puts location_finder(abc_string, a_string)
