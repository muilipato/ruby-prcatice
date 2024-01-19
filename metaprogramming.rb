class Animal
  attr_accessor :name, :age, :breed
   @@all = []
  def initialize args
    #Using a method self.send to pass the values
    args.each_key do |key, value|
      self.send("#{key}=",args[key]) #This sends a :name= value to self
    end

   # @name = args[:name]
     #@age = args[:age]
    #@breed =args[:breed]
    @@all << self
  end
  def self.all
    @@all
  end

  #Method builder
  #called by Class.method_name to call the definer
  #and them intsance.method_name
  def self.method_builder method_name
    define_method(method_name){
    "Hello"
  }
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
puts c1.hi
