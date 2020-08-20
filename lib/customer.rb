class Customer
  attr_accessor :name, :age

  @@all = [] #all the customers . CLASS variable

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip=0)
  Meal.new(self, customer, total, tip)
end


end
