Point=Struct.new(:x,:y) #创建一个新类命名为Point
class Point #open Point class for new method
  def add!(other) #define an add method
      self.x += other.x
      self.y += other.y
      self
  end
  include Comparable
  def <=>(o)
      return nil unless o.is_a? Point
      self.x**2+self.y**2<=>o.x**2+o.y**2
  end

  def Point.sum(*points)
      x=y=0
      points.each{|p| x+=p.x;y+=p.y}
      Point.new(x,y)
  end
  
  def +(o)
      Point.new self.x+o.x,self.y+o.y
  end
  @@n=0
  def initialize(x,y)
      self.x,self.y=x,y
      @@n+=1
  end
  
  def Point.count
      @@n
  end
  
  ORIGIN=Point.new 0,0
  UNIT_X=Point.new 1,0
  UNIT_Y=Point.new 0,1

  attr_reader :n
  def n
      @@n
  end
end
p=Point.new 1,1
p1=Point.new 2,2
puts p<=>p1
v=Point::sum(p,p1)
puts v
p.add!(Point.new(1,1))
puts p
#puts p.methods.to_s
puts Point::UNIT_X+Point::UNIT_Y
puts Point.count
puts Point::count

class Point3D <Struct.new("Point3D",:x,:y,:z)
end
p3=Point3D.new 1,2,3
puts p3

class WorldGreeter
  def greet
     puts "#{greeting} #{who}"
  end
  
  def greeting
     "hello"
  end
  
  def who
     "world"
  end
end
w=WorldGreeter.new
w.greet
