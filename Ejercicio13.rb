class Producto
	attr_accessor :nombre, :azul, :rojo, :verde
	def initialize(nombre, azul, rojo, verde)
		@nombre, @azul, @rojo, @verde = nombre, azul.to_i , rojo.to_i , verde.to_i
	end

	def to_s
		"#{@nombre} - azul: #{@azul}  - rojo: #{@rojo}  - verde: #{@verde}"
	end

	def all
		@azul + @rojo + @verde
	end
end

file = File.open("productos.txt", "r")
data = file.readlines
file.close

productos = []

data.each do |i|
	i = i.split(", ")
	productos << Producto.new(i[0], i[1], i[2], i[3])
end

rojos = 0
productos.each do |i|
	puts "#{i.nombre} rojo: #{i.rojo}"
	rojos += i.rojo
	puts  "Total de #{i.nombre }: i.all"
end

puts "Total de rojos: #{rojos}"

puts puts puts

productos.each_with_index do |i, e|
	puts "#{e}. #{i.nombre}"
end

newget = gets.to_i


productos.each do |i|
	puts "#{i.nombre} - #{i.all}" if i == productos[ newget]
end