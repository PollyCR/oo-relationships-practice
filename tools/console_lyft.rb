require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

polly = Passenger.new("Polly")
will = Driver.new("Will")

commute = Ride.new(polly,will,50)
party = Ride.new(polly,will,30)
station = Ride.new(polly,will,50)




Pry.start
