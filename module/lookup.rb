#!/usr/bin/ruby
class MyClass
  def my_method;"my_method";end
end
class MySubClass<MyClass
end

o=MySubClass.new
puts o.my_method
