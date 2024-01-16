require 'pry'
class User
  attr_accessor :first_name , :last_name

  def first_name= name
    @first_name = name
  end

  def last_name= last_name
    @last_name = last_name
  end
end

class Teacher < User
end

class Student < User
  attr_accessor :knowledge

  def initialize
    @knowledge = []
  end
  def learn subject
    @knowledge << subject.to_s
  end
  def knowledge
    @knowledge
  end

end
binding.pry
