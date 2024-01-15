class Coffee
  attr_reader :name
  attr_accessor :price , :ingredients
  @@all = []
  def initialize name ,price = 200
    @name = name
    @price = price
    @ingredients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_ingred ingred
    self.ingredients << ingred
  end

  def total
    sum = (self.ingredients.length * 0.5) + self.add_tax
  end

  private

  def add_tax
    self.price += self.price * 0.03 #add 3 % of tax using a private method
  end

