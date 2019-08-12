class Client
    attr_accessor :client_name, :trainer, :clients

    @@all = []
    def initialize(name,trainer = nil)
		@name = name
		@trainer = trainer
		@@all << self
	end

    def self.all 
        @@all
    end 

    def name
        @name 
    end 

    def assign_trainer(trainer)
        @trainer = trainer
        trainer.clients << self.name
    end


    
    
    end 
    