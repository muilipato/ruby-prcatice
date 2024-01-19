class Animal
  attr_accessor :name, :age, :breed
   @@all = []
  def initialize args
    @name = args[:name]
    @age = args[:age]
    @breed =args[:breed]
    @@all << self
  end
  def self.all
    @@all
  end

end

cat = {
  name: "Matt",
  age: 2,
  breed: 'cat'
}

c1 = Animal.new cat
puts c1.breed
puts c1.name
puts c1.age
