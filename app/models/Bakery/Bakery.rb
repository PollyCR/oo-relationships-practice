class Bakery
attr_reader :name
@@all = []
def initialize(name)
    @name = name 
    @@all << self 
end

def self.all 
    @@all 
end

def self.desserts 
    all.select{|dessert|dessert.bakery == self}
end 

def ingredients
    ingredients.map{|dessert|dessiert.ingredients}.flatten.uniq
end

def shopping_list
    ingredients.map{|ingredient|ingredient.name}
end

def average_calories
    total_calories = 0
    ingredients.map{|ingredient|ingredient.calories += total_calories}
    total_calories/dessert.count
end 
end 