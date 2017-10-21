# ¿CUÁL ES EL ERROR?

# class T
# 	attr_reader :m
# 	def foo
# 	@m = 5
#  end

#  def bar
# 	@m += 1
# 	end
# end

# p1 = T.new
# p1.foo
# p1.bar
# p1.m = 10

# SOLUCION: Falta el setter
class T
 attr_accessor :m
 def foo
 @m = 5
 end

 def bar
 @m += 1
 end
end

p1 = T.new
p1.foo
p1.bar
p1.m = 10