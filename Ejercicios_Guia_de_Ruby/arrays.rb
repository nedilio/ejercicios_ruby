#Ejercicios de la pagina http://http://rubytutorial.wikidot.com/arrays

array1 = [1,2,3,4,5]
array2 = [12,23,456,123,4579]
suma = 0
suma2 = 0
array1.each do |x| 
	suma += x
end

puts suma

array2.each do |y|
	print " #{y} #{ y % 2 == 0 ? " Par" : " Impar"}"
end


