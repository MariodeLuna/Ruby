def escoger()
  puts "escoge un número del 0 a 36"
  opcion = gets.chomp.to_i
  while (opcion < 0 or opcion > 36)
    puts "no cumple, intenta de nuevo con un número de 0 a 36"
    opcion = gets.chomp.to_i
  end
  return opcion
end

def rueda(entrada)
  random = Random.new
  bolita = random.rand(37)
  if entrada == bolita
    puts "ganaste"
  elsif entrada == bolita + 1 or entrada == bolita - 1
    puts "casi !!!"
  else
    puts "El número que salíó es #{bolita} y tu escogiste #{entrada} asi que perdiste"
  end
end

def jugar()
  opcion = escoger()
  rueda(opcion)
end

def main()
  cantidad_de_juegos = gets.chomp.to_i
  cantidad_de_juegos.times do |i|
    puts "juego #{i}/#{cantidad_de_juegos}"
    jugar()
  end
end

main()
