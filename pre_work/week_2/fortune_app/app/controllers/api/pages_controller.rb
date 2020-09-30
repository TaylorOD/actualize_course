class Api::PagesController < ApplicationController
  def sample_action
    @message = "Hello!"
    render "sample.json.jb"
  end

  def return_fortune
    fortune = ["You will live a long life!",
               "You will live a short but happy life!",
               "You will cry often but laugh more!",
               "Your code will be strong and bring joy to your family!",
               "You shall never grow old in spirit!",
               "The best of your life is yet to come!",
               "It's all downhill from here."]
    @fortune = fortune.shuffle.first
    render "fortune.json.jb"
  end

  def return_random_number
    number = (1..60).to_a
    @random_number = number.sample
    render "random_number.json.jb"
  end

  def bottles_of_beer
    bottles_of_beer =
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

    @bottles_of_beer = bottles_of_beer

    render "bottles_of_beer.json.jb"
  end
end
