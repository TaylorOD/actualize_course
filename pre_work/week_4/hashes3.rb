boat_1 = { "name" => "S. S. Minnow", "color" => "white", "price" => 20000 }
boat_2 = { "name" => "Titanic", "color" => "black", "price" => 700000000 }

class Boat

  def initialize(name, color, price)
    @name = name
    @color = color
    @price = price
  end

  def name
    @name
  end

  def color=(text)
    @color = text
  end

  def color
    return @color
  end

  def price
    @price
  end

end

boat_1 = Boat.new("S. S. Minnow", "white", 20000 )
boat_2 = Boat.new("Titanic", "black", 700000000)

p boat_1
p boat_2

p boat_1.name
boat_2.color = "red"
p boat_2.color