class Calculator

  def double(number)
    return number + number
  end

  def add(number_1, number_2)
    return number_1 + number_2
  end

  def divide(number_1, number_2)
    return number_1 / number_2
  end

  def multi(number_1, number_2)
    return number_1 * number_2
  end

  def sub(number_1, number_2)
    return number_1 - number_2
  end

  def average(number_1, number_2, number_3)
    return (number_1 + number_2 + number_3) / 3
  end

end


calc = Calculator.new
calc.double(2) 

puts calc.sub(50, 69)
