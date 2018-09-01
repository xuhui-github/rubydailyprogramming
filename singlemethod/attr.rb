#!/usr/bin/ruby
class MyClass
  def my_attribute=(value)
      @my_attribute=value
  end
  def my_attribute
      @my_attribute
  end
end
obj=MyClass.new
obj.my_attribute="A"
puts obj.my_attribute

class MyClass
  attr_accessor :my_attribute
end
c=MyClass.new
c.my_attribute="W"
puts c.my_attribute
