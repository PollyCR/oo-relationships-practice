class Trainer 
    attr_reader :trainer, :name, :branch , :locations
    attr_accessor :clients, :client_count

    @@all = []
    def initialize(trainer)
        @trainer= trainer
        @locations = []
        @clients = []
        @@all << self 
    end

    def self.all 
        @@all 
    end 

    def name 
        @name 
    end 

    def clients 
        @clients  
    end 

    def client_count 
        clients.count 
    end 

    def self.most_clients
        all.max_by { |trainer| trainer.client_count}.trainer
      end
end 