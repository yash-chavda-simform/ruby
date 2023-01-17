module Speed                              #here we are using module because we can not apply multiple inheritance
  def high                                #mixin
    puts 'I am in module Speed'
  end
end

module Engin                              #module engin
  def double_power
    puts 'I am in module Engin'
  end
end
                                          #Encapsulation
class Car                                 #super class
  attr_accessor :year                     #getter and setter #here we can get and set the value of year outside of class.
  attr_reader :id                         #getter #here we can only print the the value of id. 
  attr_writer :model                      #setter #here we can only modified the model name.
  def initialize(id,year,model)           #instance method wwith three argument
    @id=id
    @year=year
    @model=model
  end
  def self.nissan                         #we can create class level method using self keyword
    puts "it's nissan"
  end
  def mustang                             #public method
    puts "it's mustang"
  end
  def call                                #public method in which we are calling private method
    bmw
  end
  def range_rover
    puts "it's parent range-rover"
  end

  private                                 #private keyword for create private method

  def bmw                                 #private method
    puts "it's bmw"
  end
  def audi                                #private method
    puts "it's audi"
  end
end
                                          #inheritance
class Luxury < Car                        #Luxury inherit Car class(single level inheritance)
  include Speed                           #include module speed means we are using speed module method as instance method
  extend Engin                            #extend means we are using method as class level method
  def rolls_royce
    puts "it's rolls-royce"
  end
  def bentley
    puts "it's bentley"
  end
  def range_rover
    super                                 #using super keyword we can access parent method which has same name
    bmw                                   #calling private method from child class
    puts "it's child range-rover"
  end   
end
                                          
class Semiluxury < Luxury                 #Semiluxury inherit Luxury class and Luxury inherit Car class(multilevel inheritance)
  def range_rover
    super
    puts "it's child range-rover with Semiluxury"
  end  
end
                                          #polymorphism
class Musclecar < Car                     #musclecar inherit car 
  def mustang                             #public method
    puts "it's mustang of child 1"
  end
end

class Fastercar < Car                     #fastercar inherit car
end

car=Car.new(1,"1997","rx")                #create car object
puts car.year                             #value get for year
car.year="2000"                           #new value set for year
puts car.id                               #only we can get the value we can not change
car.model="rx1"                           #it will set the value
car.mustang                               #we can call public method directly
car.call                                  #we can call private method by calling public method which inside class
Car.nissan                                #we can call class level method using class name 

luxury=Luxury.new(2,"1999","trex")        #object for luxury class
luxury.range_rover 
luxury.high                               #calling high method from module
Luxury.double_power                       #calling double method from module which is defind as class level method

semiluxury=Semiluxury.new(3,"2000","r8")  #object for semiluxury class
semiluxury.range_rover

musclecar=Musclecar.allocate              #object of child class 
musclecar.mustang                         #it will call the method mustang of child class

fastercar=Fastercar.allocate              #object of child class
fastercar.mustang                         #it will call the onject of parent class because there is no mathod with the same name


