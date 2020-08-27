puts "Give me a day of the week!"

input = gets.chomp

if input.upcase == "MONDAY"
  puts "Sounds like someone has a case of the Mondays!"
elsif input.upcase == "TUESDAY" || input.upcase == "WEDNESDAY" || input.upcase == "THURSDAY" || input.upcase == "FRIDAY"
  puts "Time to make the Donuts!"
elsif input.upcase == "SATURDAY" || input.upcase == "SUNDAY"
  puts "It's the weekend. Enjoy it."
else
  puts "That does not compute. Try again!"
end