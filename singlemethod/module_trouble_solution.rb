#!/usr/bin/ruby
module MyModule
  def my_method;'hello';end
  def MyModule.method2;'hello';end
  def self.method3;'hello';end
end

class MyClass
  class << self
      include MyModule
  end
end

m=MyClass.new
puts MyClass.my_method
=begin
Module.my_method
=end
MyModule.method2
MyModule.method3
MyClass.method3

