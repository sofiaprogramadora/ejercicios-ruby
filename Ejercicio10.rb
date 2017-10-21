# ¿CUÁL ES EL ERROR?

# class T
#  def foo
#  @m = 5
#  end

#  def bar
#  @m += 1
#  end
# end

# p1 = T.new
# p1.foo
# p1.bar
# p1.m

# SOLUCION: Falta el getter (attr_reader)

class T
 attr_reader :m
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
p1.m