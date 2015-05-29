random = Random.new
puts "Cuantos juegos"
games = gets.chomp.to_i

games.times do |i|
	puts "juego #{i}/#{games}"
	puts "Escoge un numero del 0 al 36"
	choice = gets.chomp.to_i

	while (choice < 0 or choice > 37)
		puts "Por favor elige entre 0 y 36"
		choice = gets.chomp.to_i
	end

	bolita = random.rand(37)

	if choice == bolita
		puts "ganaste"
	elsif choice == bolita +1 or choice == bolita - 1
		puts "casi!"
	else
		puts "El numero que salio es #{bolita} y tu escogiste #{choice}"
	end
end