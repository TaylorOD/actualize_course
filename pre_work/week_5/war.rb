#fun way to get the game started. Asks the user if they want to play before declaring war

puts "Want to play war?"

input = gets.chomp.downcase

if input == "yes"
   puts "WAR!"
end
#actaual code for war

player_A = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13]
player_B = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13]

index = 1
index_2 = 45

while index_2 < player_A.sum && index_2 < player_B.sum
    puts "Turn #{index}:"
    puts "Player A: #{player_A.sample}"
    puts "Player B: #{player_B.sample}"
    player_A = player_A.shuffle
    player_B = player_B.shuffle
    if player_A[0] == player_B[0]
        puts "THIS MEANS WAR!!!"
        puts "Player A puts down: #{player_A[1]}, #{player_A[2]}, #{player_A[3]}, and #{player_A[4]}!"
        puts "Player B puts down: #{player_B[1]}, #{player_B[2]}, #{player_B[3]}, and #{player_B[4]}!"
      if player_A[4] > player_B[4]
        player_A << player_B[0]
        player_A << player_B[1]
        player_A << player_B[2]
        player_A << player_B[3]
        player_A << player_B[4]
        player_B.delete_at(0)
        player_B.delete_at(1)
        player_B.delete_at(2)
        player_B.delete_at(3)
        player_B.delete_at(4)
        puts "Player A won turn #{index}!"
      elsif player_B[4] > player_A[4]
        player_B << player_A[0]
        player_B << player_A[1]
        player_B << player_A[2]
        player_B << player_A[3]
        player_B << player_A[4]
        player_A.delete_at(0)
        player_A.delete_at(1)
        player_A.delete_at(2)
        player_A.delete_at(3)
        player_A.delete_at(4)
        puts "Player B won turn #{index}!"
      end
    elsif player_A[0] > player_B[0]
        player_A << player_B[0]
        player_B.delete_at(0)
        puts "Player A won turn #{index}!"
    elsif player_B[0] > player_A[0]
        player_B << player_A[0]
        player_A.delete_at(0)
        puts "Player B won turn #{index}!"
    end
    index += 1
end

if player_A.sum > player_B.sum
    puts "Player A wins the war!"
else 
    puts "Player B wins the war!"
end

# p player_A
# p player_B
# p player_A.sum
# p player_B.sum