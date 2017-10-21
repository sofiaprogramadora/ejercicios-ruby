# ¿CUÁL ES EL ERROR CON EL SIGUIENTE CÓDIGO?

# class Store
# 	attr_accessor :name
# 	def initialize(name)
# 		name = name
# 	end
# end

# store = Store.new("S1")
# store.name

# SOLUCION: name es una variable de instancia
class Store
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end

store = Store.new("S1")
store.name
