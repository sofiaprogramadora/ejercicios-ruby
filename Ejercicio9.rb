# ¿CUÁL ES EL ERROR?

# class T
#  def foo
#  m = 5
#  end

#  def bar
#  m += 1
#  end
# end

# p1 = T.new
# p1.foo
# p1.bar

# Error: bar': undefined method `+' for nil:NilClass (NoMethodError)
# SOLUCION: m es una variable local
class T
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