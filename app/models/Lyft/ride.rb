class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(passenger,driver, distance)
       @driver = driver
       @passenger = passenger
       @distance = distance
       @@all << self
   end

    def self.all
       @@all
   end

    def self.average_distance
       all.sum {|ride| ride.distance}/all.size
   end


end 