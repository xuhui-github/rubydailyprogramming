#!/usr/bin/ruby
class MyClass<Array
  def my_method
      puts "Hello"
  end
end

m=MyClass.new
m1=MyClass.new
m.my_method
m1.my_method


c=Class.new(Array) do
  def my_method
      puts "Hello"
  end
end
c.new.my_method
o=c.new
o.my_method



