
$resp = String.new

def centAfahr(grado)
	fahr = (grado * 9/5) + 32
	puts "#{fahr} Grados fahrenheit"
end

def fahrAcent(grado)
	cent = (grado - 32) * 5/9
	puts "#{cent} Grados centigrados"
end

def calculo(opcion)
	if opcion == "1"
			print "Introduzca el valor "
			grado = STDIN.gets.chomp
			fahrAcent(grado.to_i)	
	elsif opcion == "2"
			print "Introduzca el valor "
			grado = STDIN.gets.chomp
			centAfahr(grado.to_i)
	end

		print "Desea Continuar? "
		$resp = STDIN.gets.chomp	
		while $resp == "y" || $resp == "Y"
			inicio()
		end
		puts "Gracias por preferirnos"

end

def inicio ()
	puts "Seleccione su Conversion"
	puts "Fahr A Cent = 1  y Cent A Fahr = 2"
	print "Introduzca su opcion "
	opcion = STDIN.gets.chomp
	calculo(opcion)
end

inicio()

	

	



		


