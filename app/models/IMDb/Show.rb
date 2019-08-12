class Show 
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
        ShowCharacter.all.select{ |char|char.show == self }
    end 

    def on_the_big_screen
        Show.all & Movie.all 
    end 



end 