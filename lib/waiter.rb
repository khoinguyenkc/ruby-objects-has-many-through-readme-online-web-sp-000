class Waiter
   attr_accessor :name, :yrs_experience

   @@all = [] #all the waiters . CLASS variable

   def initialize(name, yrs_experience)
     @name = name
     @yrs_experience = yrs_experience
     @@all << self
   end

   def self.all
     @@all
   end

   def new_meal(waiter, total, tip=0)
     Meal.new(waiter, self, total, tip)
   end

end
