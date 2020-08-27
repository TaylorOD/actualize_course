class Hangman

    def initialize
        @word = words.sample
        @lives = 7
        @word_teaser = ""
        
        @word.first.size.times do
            @word_teaser += "_ "
        end
    end

    def words
        [
            ["cricket", "A game plaed by indian and brittish people"],
            ["jogging", "Faster than walking..."],
            ["celebrate", "What you do after an acomplishment"],
            ["continent", "There are only seven of these in the world"],
            ["exotic", "Not from around here..."],
            ["Sharp Objects", "A book about women who are not dull"],
            ["Tennis", "You play this in sets of 5 or 7"],
        ]
    end

    def print_teaser last_guess = nil
        update_teaser(last_guess) unless last_guess.nil?
        puts @word_teaser
    end

    def update_teaser last_guess
        new_teaser = @word_teaser.split

        new_teaser.each_with_index do |letter, index|
            #replace blank values with user inputed letter if matches letter in word
            if letter == '_' && @word.first[index] == last_guess
                new_teaser[index] = last_guess
            end

        end

        @word_teaser = new_teaser.join(' ')
    end

    def make_guess
      if @lives > 0
        puts "Enter a letter"
        guess = gets.chomp


        # if letter is not part of word then remove from letters array
        good_guess = @word.first.include? guess

        if guess == "exit"
            puts "Thanks you for playing"
        elsif good_guess
            puts "Good guess!"

            # remove correct guess from alphabet

            print_teaser guess

            if @word.first == @word_teaser.split.join
                puts "Congrats! You got it!"
            else
              make_guess
            end
        else
            @lives -= 1
            puts "Sorry... You have #{ @lives } remaining. Try again."
            make_guess
        end
      else
        puts "Game Over... better luck next time!"
      end
    end

    def begin
      puts "New game started... Your words is #{ @word.first.size } characters long."
      puts "To exit game type 'exit' at any time"
      print_teaser

      puts "Your clue is #{ @word.last }"

      make_guess

    end

end

game = Hangman.new
game.begin