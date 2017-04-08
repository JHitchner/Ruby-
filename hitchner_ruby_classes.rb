# Calculator
# Created 4 class methods that take in two arguments and do different mathematical operations.
class Calculator
  def self.add(num1, num2)
    num1 + num2
  end

  def self.subtract(num1, num2)
    num1 - num2
  end

  def self.multiply(num1, num2)
    num1 * num2
  end

  def self.divide(num1, num2)
    num1 / num2
  end
end

puts Calculator.add(4, 1)
puts Calculator.subtract(3, 2)
puts Calculator.multiply( 10, 5)
puts Calculator.divide(100, 6.0)

# Built a class Elevator with a floor getter/setter and instance methods for moving the elevator up and down floors. I tried to do the floor exceptions but had an issue getting it to work properly. When it reaches the top floor it no longer is able to go back down and vice versa. Please let me know if you see why this is happening as I get no errors in terminal.
class Elevator
  attr_accessor(:floor)
  def initialize()
    @floor
  end
  def go_up()
    @floor = floor + 1
    # top_floor(floor)
    greeting(floor)
  end
  def go_down()
    @floor = floor - 1
    # ground_floor(floor)
    greeting(floor)
  end
  def greeting(floor)
    "Welcome to floor #{floor}"
  end
  # def top_floor(floor)
  #   if floor > 12
  #      floor = 12
  #      "#{floor} is the top floor"
  #   end
  # end
  # def ground_floor(floor)
  #   if floor < 1
  #     floor = 1
  #     "#{floor} is the ground floor"
  #   end
  # end
end

spooky = Elevator.new()
spooky.floor = 6
puts spooky.floor
puts spooky.go_up
puts spooky.go_up
puts spooky.go_down
