#!/usr/bin/ruby
class C
  def talk
    puts "Method grabbing test! self is #{self}."
  end
end

c=C.new
puts c
meth=c.method(:talk)
meth.call

class D<C
end
d=D.new
puts d
unbound=meth.unbind
unbound.bind(d).call
