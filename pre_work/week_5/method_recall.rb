puts "I'm thinking of a number between 1 and 100"
puts "Take a guess at what number I'm thinking of!"
puts "Input number:"

while 
  input = gets.chomp

  if input.to_i == 33
    puts "You win!"
    break
  elsif input.to_i > 33
    puts "Too high! Try again!"
  elsif input.to_i < 33
    puts "Too low! Try again!"
  end
end

