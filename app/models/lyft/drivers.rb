class Driver
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
        # returns all rides a driver has made
        Ride.all.select do |ride|
            ride.driver == self
        end
    end
    
    def passangers
        # returns all passengers a driver has had
        rides.collect do |ride|
            ride.passanger
        end
    end

    def total_distance
        # should calculate the total distance
        # the driver has travelled with the service
        total_distance = 0
        self.rides.each do |ride|
            total_distance += ride.distance
        end
        total_distance
    end

    def self.mileage_cap(distance)
        # takes an argument of a distance (float)
        # and returns all drivers who have exceeded that mileage

        self.all.select do |driver|
            driver.total_distance > distance
        end
    end

end