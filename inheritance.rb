require 'pry'
class Animal
  attr_accessor :name , :age

  def initialize name , age
    @name = name
    @age = age
  end

end

class Dog < Animal
  def speak
    "Woof"
  end
end

class Cat < Animal
  def speak
    "Meoww"
  end
end

c1 = Cat.new "Rose" , 2
d1 = Dog.new "Mark" , 4

class Vehicle
  attr_accessor :wheel_size , :wheel_number
  def initialize wheel_size, wheel_number
    @wheel_size = wheel_size
    @wheel_number = wheel_number
  end

  def go
    "vrooom"
  end

  def fill_tank
    "Filling!"
  end
end

class Car < Vehicle
  def go
    "leave"
  end
  def check
    "Checking"
  end
end

car1 = Car.new 32, 4567
binding.pry

