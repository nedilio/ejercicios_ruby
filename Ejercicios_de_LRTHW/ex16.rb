filename = ARGV.first
script = $0

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit Return"

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, "w")

puts "Truncanting the file. GoodBye"
target.truncate(target.size)

puts "Now I'm going to ask you for three line "

print "line 1\n"; line1 = STDIN.gets.chomp()
print "line 2\n"; line2 = STDIN.gets.chomp()
print "line 3\n"; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file"

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it"
target.close()