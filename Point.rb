#!/usr/bin/ruby
class Point
  def initialize(x,y)
      @x=x
      @y=y
  end
  
  attr_reader : x
  attr_reader : y
end

p=Point 2,3
puts p.x
puts p.y
