#!/usr/bin/ruby

c=Class.new(Array) do
  def my_method
      'Hello'
  end
end

o=c.new
puts o.my_method
