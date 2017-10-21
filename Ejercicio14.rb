class Alumno
	attr_accessor :nombre, :n1, :n2, :n3
	def initialize(nombre,  n1, n2,n3)
		@nombre, @n1, @n2, @n3 = nombre,  n1.to_i, n2.to_i, n3.to_i
	end

	def to_s
		"#{@nombre} - #{@n1} - #{@n2} - #{@n3}"
	end

	def avg
		num = @n1 + @n2 + @n3
		num/3
	end
end

file = File.open('alumnos.txt', 'r')
data = file.readlines
file.close

alumnos = []

data.each do |i|
	i = i.split(", ")
	alumnos << Alumno.new(i[0], i[1], i[2], i[3])
end

puts alumnos

alumnos.each do |i|
	puts "#{i.nombre} - #{i.avg}"
end