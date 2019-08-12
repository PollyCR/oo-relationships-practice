# create files for your ruby classes in this directory



require_relative 'Guest.rb'
require_relative 'Listing.rb'

class Trip
    attr_accessor :guest, :listing
    @@all_trips = []
    def initialize(guest, listing)
        @guest = guest
        @listing = listing 
        @passenger_distance = 0 
        @driver_distance = 0 
        @@all_trips << self 
    end 

    def self.all 
        @@all_trips
    end


end 
