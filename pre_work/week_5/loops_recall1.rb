puts "Ready to get drunk?"

input = gets.chomp

if input.upcase == "YES"
  puts "Let's go!"
else
 puts "Boo! But that won't stop me!"
end

index = 99

index_2 = 98

100.times do
  if index >= 3
    puts "#{index} bottles of beer on the wall, #{index} bottles of beer Take one down and pass it around, #{index_2} bottles of beer on the wall"
    index = index - 1
    index_2 = index - 1
  elsif index >= 2
    puts "2 bottles of beer on the wall, 2 bottles of beer Take one down and pass it around, 1 bottle of beer on the wall"
    index = index - 1
  elsif index >= 1
    puts "1 bottle of beer on the wall, 1 bottle of beer Take one down and pass it around, no more bottles of beer on the wall"
    index = index - 1
  else
    puts "No more bottles of beer on the wall, no more bottles of beer Go to the store and buy some more, 99 bottles of beer on the wall"
  end
end
