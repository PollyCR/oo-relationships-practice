class Movie
    attr_accessor :name 
    @@all = []
    def initialize(title)
        @title = title 
        @@all << self 
    end 

    def all 
        @@all 
    end 

    def characters 
        MovieCharacter.all.select{ |char|char.movie== self }
    end 

    

end 