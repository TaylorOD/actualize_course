shirt_1 = { "type" => "short-sleeve", "price" => 12 }
shirt_2 = { "type" => "long-sleeve", "price" => 18 }

class Shirt

  def initialize(type, price)
      @type = type
      @price = price
  end

  def type
    @type
  end

  def price
    @price
  end

end

shirt_3 = Shirt.new("short-sleeve", 12)
shirt_4 = Shirt.new("long-sleeve", 18)

p shirt_3
p shirt_4