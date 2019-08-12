require_relative 'Guest.rb'
require_relative 'Trip.rb'

class Listing
    @@all_listings = []
    attr_reader :all_guests
    attr_accessor :city
    def initialize(name,city)
        @name = name 
        @city = city
        @@all_listings << self
    end 

    def self.all 
        @@all_listings 
    end 

    def trips 
        Trip.all.select{|trip|trip.listing = self}
    end 

    def trip_count 
        trips.count 
    end 

    def self.find_all_by_city(city)
        all.select{|listing|listing.city == city}
    end

    def self.most_popular
        self.all.max_by { |listing| listing.trip_count }
      end



end