#Keyword arguments are a special way of passing
#arguments into a method
def happy_birthday name:, current_age:
  puts "Happy birthday #{name}"
  current_age+=1
  puts "Now at #{current_age}"
end

puts happy_birthday name:"Bey", current_age:32

class Person
  attr_accessor :name, :age
  def initialize name:, age:
    @name = name
    @age = age
  end
end


person_att = {name:"Mum", age: 24}
person = Person.new person_att
puts person.name


