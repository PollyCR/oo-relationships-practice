require_relative 'Listing.rb'
require_relative 'Trip.rb'
class Guest
    attr_accessor :name, :all_listings, :all_trips
    @@all_guests = []
    def initialize(name)
        @name = name 
        @@all_guests << self 
    end

    def trips
        Trip.all.select{|trip|trip.guest == self}
    end

    def listings
        trips.map{|trip|trip.listing}
    end 

    def self.all 
        @@all_guests
    end 

    def trip_count 
        trips.count
    end

    def self.find_all_by_name(name)
        all.find_all{|guest|guest.name == name}
    end

    def self.pro_traveller 
        all.select{|guest|guest.trip_count > 1}
    end 

end 