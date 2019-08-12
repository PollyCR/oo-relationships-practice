class Dessert
    attr_accessor 
    attr_reader 

    @@all_desserts = []

    def initialize(name,bakery)
        @name = name 
        @bakery = bakery 
        @@all_desserts << self

    end

    def self.all 
        @@all_desserts 
    end 


    def ingredients 
        Ingredient.all.select {|ingredient| ingredient.dessert == self}
    end 

    def bakery 
        @bakery 
    end

    def calories 
        total_calories = 
        ingredients.map {|ingredient|ingredient.calories += total_calories}
    end 


end
