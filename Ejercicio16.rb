class Product
	def initialize(name, azul, rojo, verde)
		@name, @azul, @rojo, @verde = name, azul.to_i, rojo.to_i, verde.to_i
	end

	def to_s
		"#{@name.capitalize}, #{@azul}, #{@rojo}, #{@verde}"
	end
end

print "Ingrese un nombre para el nuevo producto: "
name = gets.chomp
puts

print "Ingrese el stock en azul: "
azul = gets.chomp
puts

print "Ingrese el stock en rojo: "
rojo = gets.chomp
puts

print "Ingrese el stock en verde: "
verde = gets.chomp
puts

producto = Product.new(name, azul, rojo, verde)

puts producto

file = File.open("productos16.csv", "a")
file.puts producto.to_s
file.close