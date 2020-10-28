require "rspec"

class ChangeMachine
  def value_to_coins(number)
    change_array = []
    while number > 0
      if number >= 25
        change_array << 25
        number -= 25
      elsif number >= 10
        change_array << 10
        number -= 10
      elsif number >= 5
        change_array << 5
        number -= 5
      elsif change_array << 1
        number -= 1
      end
    end
    return change_array
  end
end

RSpec.describe ChangeMachine do
  describe "#value_to_coins" do
    it "should return [1] if given 1" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(1)
      expect(result).to eq([1])
    end
    it "should return [1, 1] if given 2" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(2)
      expect(result).to eq([1, 1])
    end
    it "should return [1, 1, 1] if given 3" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(3)
      expect(result).to eq([1, 1, 1])
    end
    it "should return [5] if given 5" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(5)
      expect(result).to eq([5])
    end
    it "should return [5, 1] if given 6" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(6)
      expect(result).to eq([5, 1])
    end
    it "should return [10] if given 10" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(10)
      expect(result).to eq([10])
    end
    it "should return [10, 5, 1, 1, 1, 1] if given 19" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(19)
      expect(result).to eq([10, 5, 1, 1, 1, 1])
    end
    it "should return [25] if given 25" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(25)
      expect(result).to eq([25])
    end
    it "should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(119)
      expect(result).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
