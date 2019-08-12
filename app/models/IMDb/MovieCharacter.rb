class MovieCharacter 
    attr_accessor :name, :movie, :actor, :all_characters
    
    @@all = []
    
    def initialize(name, movie, actor)
        @name = name 
        @movie = movie
        @actor = actor
        @@all << self
        Character.all << self 
    end 
    
    def self.all 
    @@all
    end 

    
    end 
    