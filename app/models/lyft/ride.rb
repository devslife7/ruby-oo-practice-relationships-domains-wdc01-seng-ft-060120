class Ride
    attr_reader :driver, :passanger, :distance

    @@all = []

    def initialize(passanger, driver, distance)
        @driver = driver
        @passanger = passanger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        # should find the average distance of all rides
        all_rides = self.all
        total_distance = 0
        all_rides.each do |ride|
            total_distance += ride.distance
        end
        total_distance = total_distance/all_rides.length
        total_distance.round(2)
    end

end