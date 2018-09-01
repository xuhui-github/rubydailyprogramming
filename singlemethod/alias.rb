#!/usr/bin/ruby
class MyClass
  def my_method
      puts "MyClass#my_method"
  end
  alias_method  :m ,:my_method
  alias_method :m2 ,:m
end
m=MyClass.new
m.m
m.my_method
m.m2
