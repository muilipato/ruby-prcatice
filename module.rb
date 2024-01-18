module Dance
  module Classmethods
    def metadata
      "This class has methods of a dancer"
    end
  end
  module Instancemethods

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

end

class Kid
  extend Dance::Classmethods
  include Dance::Instancemethods # Let's us use the methods in Dance module
  attr_accessor :name
  def initialize name
    @name = name
  end

end

class Dancer
  include Dance::Instancemethods
  extend Dance::Classmethods
end

angelina = Kid.new "Angelina"
puts "#{angelina.name} says: #{angelina.twirl}"
puts Kid.metadata
