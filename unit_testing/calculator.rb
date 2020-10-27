require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end
  describe "#subtract" do
    it "should return the first number subtracted by the second number" do
      calculator = Calculator.new
      result = calculator.subtract(4, 1)
      expect(result).to eq(3)
    end
  end
  describe "#multiply" do
    it "should return the first number multiplied by the second number" do
      calculator = Calculator.new
      result = calculator.multiply(4, 1)
      expect(result).to eq(4)
    end
  end

  describe "#divide" do
    it "should return the first number divided by the second number" do
      calculator = Calculator.new
      result = calculator.divide(4, 1)
      expect(result).to eq(4)
    end
  end
  describe "#sqaure" do
    it "should return the square root of the number" do
      calculator = Calculator.new
      result = calculator.square(4)
      expect(result).to eq(16)
    end
  end
end
