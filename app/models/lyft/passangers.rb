class Passanger
    attr_reader :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end

    def rides
        # returns all rides a passenger has been on
        Ride.all.select do |ride|
            ride.passanger == self
        end 
    end

    def drivers
        # returns all drivers a passenger has ridden with
        rides.collect do |ride|
            ride.driver
        end 
    end

    def total_distance
        # should calculate the total distance
        # the passenger has travelled with the service
        total_distance = 0
        self.rides.each do |ride|
            total_distance += ride.distance
        end
        total_distance
    end

    def self.premium_members
        # should find all passengers who
        # have travelled over 100 miles with the service
        self.all.select do |passanger|
            passanger.total_distance > 100
        end

    end
end