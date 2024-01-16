#Custom Error handling
require 'pry'
class Person
  attr_accessor :name , :partner

  def initialize name
    @name = name
  end

  def married_to person
    if person.is_a? Person
      self.partner = person
      person.partner = self
    else
      begin
        raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
    end
  end
  class PartnerError < StandardError
    def message
      "person arguement of the married_to method must be an instance of Person class!"
    end
  end

end

beyonce = Person.new "Beyonce"
beyonce.married_to "jayz"
binding.pry

