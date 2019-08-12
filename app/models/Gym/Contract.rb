class Contract

    attr_accessor :trainer, :branch, :locations, :location, :clients, :client_base
    attr_reader :client_count, :name, :client_name

    @@all = []

    def initialize(trainer, branch)
       @trainer = trainer
       @branch = branch
       trainer.locations << branch.branch
       branch.trainers << trainer.trainer
        @@all << self
      branch.client_base << trainer.clients
   end

    def self.all
       @@all
   end	


end 