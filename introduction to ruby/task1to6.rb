#task-1 created class name as car
class Car
  #task-6 Create an enum for fuel type and use it with any method
  module Fueltype
    FUELTYPE="diesel"
  end
  
  #task-4 Create a constant within the class named no of wheels, set value 4, and use it in a different method
  No_of_wheel=4
  #task-3 Create a method and create an instance and local variable with the same name color and test the scope of both variable   
  #in the same method they are useable because here they are created 
  def same_var
    @color="black"
    color="white"
    puts "#{@color} and #{color}"
  end

  #part of task6
  def fuel_type
    puts Fueltype::FUELTYPE 
  end
  #part of task-3 => here @color is useable beacause it is instance variable but only color is local variable so it is not useable
  def check_scope
    #puts "#{@color} and #{color}"
    puts "#{@color}" 
  end

  #part of task4
  def no_of_wheels
    puts "no of wheel of this car is #{No_of_wheel}"
  end

  #Create a method to take an argument for the color and print string: the color of the car is ___
  def car_color(color)
    puts "the color of the car is #{color}"
  end

  #task-2 Created a method that takes an argument of price and returns the integer value of the price plus 18% GST of that price
  def add_gst(price)
    gst=price*0.18
    return (gst+price).to_i
  end
end

car=Car.new()#create object
car1=Car.new
puts "GST:#{car.add_gst(20)}"
puts car.no_of_wheels
puts car.car_color("green")
puts car.same_var
puts car.check_scope
puts car.fuel_type


