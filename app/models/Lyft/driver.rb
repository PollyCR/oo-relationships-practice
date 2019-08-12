class Driver 
    attr_reader :name
    attr_accessor :total_distance
    @@all = []
def initialize(name)
    @name = name 
    @@all << self
end
def self.all
    @@all 
end
def rides
    Ride.all.select {|ride| ride.driver == self}
end

def total_distance
    rides.sum {|ride| ride.distance}
end

def self.mileage_cap(distance)
    all.select{|dx|dx.total_distance > distance}
    
end

end 