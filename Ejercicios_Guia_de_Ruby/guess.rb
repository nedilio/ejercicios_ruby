#Acertijo

words  = ['foobar', 'baz' , 'quux']
secret = words[rand(3)]
print "adivina? "

while adivina = STDIN.gets.chop
	if adivina == secret 
		print "Ganas!!"
		break
	else
		puts "Perdiste"
	end
	print "adivina? "	
end

print "La Palabra era ", secret, ".\n"
