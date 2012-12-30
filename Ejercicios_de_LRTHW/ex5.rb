my_name = 'Zed A. Shaw'
my_age = 35# not a lie
my_height = 74
my_weight = 180
my_eyes = 'Blue'
my_teeth = 'white'
my_hair = 'Brown'

puts "Let's talk about %s" % my_name
puts " He's %d inches tall" % my_height
puts "He's %d pounds heavy " % my_weight

puts "Actually that's not to heavy."
puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]
puts "His teeth are ususally %s depending on the coffe" % my_teeth

puts "If i add %d, %d, and %d i get %d" % [my_age , my_height , my_weight , my_age + my_height + my_weight]