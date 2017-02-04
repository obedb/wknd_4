# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)


module ModuleCalculator
   def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end 

class SimpleCalculator

 include ModuleCalculator
end

class FancyCalculator
  include ModuleCalculator 
  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

fancycalculator = FancyCalculator.new
puts fancycalculator.add(8,2)
puts fancycalculator.subtract(4,7)
puts fancycalculator.multiply(7,2)
puts fancycalculator.divide(90,10)
puts fancycalculator.square_root(25)


simplecalculator = SimpleCalculator.new
puts fancycalculator.add(8,2)
puts fancycalculator.subtract(4,7)
puts fancycalculator.multiply(7,2)
puts fancycalculator.divide(90,10)


