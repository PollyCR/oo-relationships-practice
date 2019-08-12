class Ingredient

    @@all_ingredients = []
   attr_reader :name, :calories
 
    def initialize(name,calories, dessert)
     @name = name
     @calories = calories
     @dessert = dessert
     @@all_ingredients << self
   end
 
    def self.all
     @@all_ingredients
   end
 
    def dessert
     @dessert
   end
 
    def bakery
     dessert.bakery
   end
 
    def self.find_all_by_name(ingredient)
     all.select {|item| item.include?(ingredient)}
   end
 
  end