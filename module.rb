module Dance
def twirl
  "Trwirling"
end

def jump
  "Jumping"
end

def swim
  "Swimming"
end

end

class Kid
  include Dance # Let's us use the methods in Dance module
  attr_accessor :name
  def initialize name
    @name = name
  end

end

class Dancer
  include Dance
end

angelina = Kid.new "Angelina"
puts "#{angelina.name} says: #{angelina.twirl}"
