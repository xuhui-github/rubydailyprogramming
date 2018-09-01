#!/usr/bin/ruby

module MyModule
  def my_method
      "hello"
  end
end

class MyClass
  class << self
    include MyModule
  end
end

puts MyClass.my_method
m=MyClass.new
m.my_method
