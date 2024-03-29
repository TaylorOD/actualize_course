module MotionAble
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include MotionAble

  def initialize
    @speed = 0
    @direction = "north"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include MotionAble

  def initialize
    @speed = 0
    @direction = "north"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike1 = Bike.new
car1 = Car.new

bike1.ring_bell
car1.honk_horn

bike1.accelerate
car1.accelerate

car1.turn("East")
bike1.turn("West")

p bike1
p car1
