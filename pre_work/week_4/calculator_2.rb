class Calculator

  def double(number)
    return number + number
  end

end


calc = Calculator.new
calc.double(2) 

puts calc.double("string")