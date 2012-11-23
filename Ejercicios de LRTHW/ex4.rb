cars = 100
space_in_a_car = 4
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_drivers = drivers
carpool_capacity = cars_drivers * space_in_a_car
average_passengers_per_car = passengers / cars_drivers

puts "there are #{cars} cars available"
puts " There only #{drivers} drivers available"
puts "there will be #{cars_not_driven} empty cars today"
puts "We can transport #{carpool_capacity} people today"
puts "we need #{passengers} passengers to carpool today"
puts "we need to put about #{average_passengers_per_car} in each car."
