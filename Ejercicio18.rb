class Carta
	def initialize(num, pinta)
		@num, @pinta = num, pinta
	end

	def to_s
		"#{@num} - #{@pinta}"
	end
end

cartas = nil

input = 0
nums = ["az", 2, 3, 4, 5, 6, 7, 8, 9, "J", "K", "Q"]
pintas = ["Diamante", "Trevol", "Corazon", "Espada"]
while input != "salir"
	print "Escriba --help ó -h para ayuda de como usar este programa >>"
	input = gets.chomp
	if input == "--help" || input == "-h"
		puts "jugar: generar 5 cartas al azar"
		puts "guardar: guardar las cartas en un archivo"
		puts "mostrar: mostrar las 5 cartas en pantalla"
		puts "leer: cargar las cartas desde el archivo"
		puts "salir: terminar el programa."
	elsif input == "jugar"
		cartas = []
		5.times { |n| cartas << Carta.new(nums[rand(11) + 1], pintas[rand(3) + 1]) }
		puts "Generando cartas..."
	elsif input == "guardar"
		if cartas != nil
			file = File.open('cartas.txt', 'w')
			file.puts cartas
			file.close
		else
			puts "Debes generar cartas antes de guardarlas"
		end
	elsif input == "leer"
		if File.exist?('cartas.txt')
			file = File.open('cartas.txt', 'r')
			data = file.readlines
			file.close
		else
			puts "No existe el archivo"
		end
		cartas = data
		puts "Leyendo"
	elsif input == "mostrar"
		puts cartas
	end
end