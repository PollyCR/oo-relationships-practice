class Location

    attr_accessor :branch, :trainers, :locations, :location, :client_base
    attr_reader :name

    @@all = []

    def initialize(branch)
       @branch = branch
       @trainers = []
       @clients = []
       @@all << self
       @client_base = []
   end



    def self.all
       @@all
   end


def self.least_clients 
    all.min_by {|gym|gym.client_base}.branch
end 

end 
