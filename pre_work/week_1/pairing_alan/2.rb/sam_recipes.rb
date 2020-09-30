sam_recipes = ["meatballs", "spageties", "BLT", "gfdg", "gfsdgdf", "g", "gf", "gfdgdf", "gkfkf", "gg"]

sally_speaks = ["Korean", "German", "English", "Bralizian", "6th"]

if sam_recipes.include?("crepes") || sally_speaks.include?("French")
  puts "Sally and Sam should Marry!"
elsif sam_recipes.length > 10 && sally_speaks.length > 5
  puts "Sally and Sam should date!"
else
  puts "Love is dead!"
end

# puts sally_speaks
# puts sam_recipes
