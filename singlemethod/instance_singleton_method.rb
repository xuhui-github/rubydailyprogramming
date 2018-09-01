#!/usr/bin/ruby
module MyModule
  def my_method;'hello';end
  def self.my_method1;'hello';end
end

obj=Object.new
class << obj
  include MyModule
end

obj.my_method
puts obj.singleton_methods


