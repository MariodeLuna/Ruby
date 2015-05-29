persona = [{
	"Nombre Completo": "Hernan" ,
	"Pais": "Mexico" ,
	"Continente": "America", 
	"Genero": "Hombre"}, 
	{"Nombre Completo": "Helga", 
	"Pais": "Suiza" ,
	"Continente": "Europa", 
	"Genero": "Mujer"},
	{
		"Nombre Completo": "Duran", 
	"Pais": "Austria" ,
	"Continente": "Europa", 
	"Genero": "Hombre"
	}
]



puts persona.count
continentes = persona.map{|x| x[:Continente]}

puts "#{continentes}"