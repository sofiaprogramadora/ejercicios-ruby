require 'date'

class Empresa

	attr_accessor :name, :dates
	def initialize(name, dates)
		@name, @dates = name, dates
	end

	def to_s
		"#{@name} - #{@dates}"
	end

	def parse
		datesnew = []
		@dates.each do |i|
			datesnew << Date.parse(i)
		end
		datesnew
	end

	def before(date)
		dates = []
		self.parse.each do |i|
			dates << i if i < date
		end
	dates
	end

		def after
		dates = []
		self.parse.each do |i|
			dates << i if i > Date.today
		end
	dates
	end
end

file = File.open('empresas.txt', 'r')
data = file.readlines
file.close

empresas = []

data.each do | i |
	i = i.split(" ")
	empresas << Empresa.new(i[0], i[1..i.size])
end

empresas.each do |i|
	puts "#{i.name}"
	i.before(Date.parse("2017-08-31")).each do |i|
		puts i
	end
	puts
end

puts
puts
puts

empresas.each do |i|
	puts "#{i.name}"
	i.after.each do |i|
		puts i
	end
	puts
end