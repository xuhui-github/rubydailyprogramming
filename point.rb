#!/usr/bin/ruby

class Point
  def initialize(x,y)
    @x=x
    @y=y
  end
  
  def getx
    @x
  end
  
  def gety
    @y
  end
 
  attr_accessor :x
  attr_accessor :y
end

p=Point.new(2,3)
puts p.getx
puts p.gety
puts p.x
puts p.y
