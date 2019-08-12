class Actor 
    attr_reader :name 
    attr_accessor :all 
    
    @@all = []
    
	def initialize(name)
        @name = name 
        @@all << self 
    end
    
    def self.all 
        @@all 
    end

    def appearances
        Character.all.find_all{|char|char.actor = actor}
    end 


end 