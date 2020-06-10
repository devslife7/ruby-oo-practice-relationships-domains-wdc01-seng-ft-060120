require_relative '../config/environment.rb'


bill = Passanger.new("Bill")
tom = Passanger.new("Tom")
anny = Passanger.new("Anny")
nick = Passanger.new("Nick")

john = Driver.new("John Driver")
paul = Driver.new("Paul Driver")
mary = Driver.new("Mary Driver")
lety = Driver.new("Lety Driver")

ride1 = Ride.new(bill, john, 40.5)
ride2 = Ride.new(tom, paul, 80.3)
ride3 = Ride.new(anny, mary, 20.1)
ride4 = Ride.new(nick, lety, 50.7)
ride5 = Ride.new(bill, paul, 80.2)
ride6 = Ride.new(nick, mary, 60.4)

def passanger_tests

    puts 'Passanger knows its rides'
    puts bill.rides.include?(ride1)
    puts bill.rides.include?(ride5)
    puts !bill.rides.include?(ride4)
    puts !bill.rides.include?(ride2)

    puts 'Passanger knows its drivers'
    puts nick.drivers.include?(mary)
    puts nick.drivers.include?(lety)
    puts !nick.drivers.include?(paul)
    puts !nick.drivers.include?(john)

    puts 'Passanger calculates total distance'
    puts bill.total_distance == 120
    puts nick.total_distance == 110
    puts anny.total_distance == 20

    puts 'Passanger knows its premium members'
    puts Passanger.premium_members.include?(bill)
    puts Passanger.premium_members.include?(nick)
    puts !Passanger.premium_members.include?(anny)
    puts !Passanger.premium_members.include?(tom)

end

puts 'Driver knows its rides'
puts mary.rides.include?(ride3)
puts mary.rides.include?(ride6)
puts !mary.rides.include?(ride2)
puts !mary.rides.include?(ride1)

puts 'Driver knows its passangers'
puts paul.passangers.include?(tom)
puts paul.passangers.include?(bill)
puts !paul.passangers.include?(nick)
puts !paul.passangers.include?(anny)

puts 'Driver can calculate total distance'
puts mary.total_distance == 80
puts paul.total_distance == 160
puts lety.total_distance == 50
puts john.total_distance == 40

puts 'Drivers knows who has exceeded mileage cap'
puts Driver.mileage_cap(70).include?(paul)
puts Driver.mileage_cap(70).include?(mary)
puts !Driver.mileage_cap(70).include?(john)
puts !Driver.mileage_cap(70).include?(lety)

puts 'Ride calculates the average distance'
puts Ride.average_distance.class == Float
puts Ride.average_distance == 55.37


# passanger_tests
def reload
  load 'config/environment.rb'
end

Pry.start
