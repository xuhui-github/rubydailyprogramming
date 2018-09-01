class Point
  def initialize(x,y)
      @x=x
      @y=y
  end

  def to_s
      "{#@x,#@y}"
  end
end

class Point3D<Point
  def initialize(x,y,z)
      super(x,y)
      @z=z
  end

  def to_s
      "{#@x,#@y,#@z}"
  end
end

p=Point.new 1,2
p1=Point3D.new 1,2,3
puts p
puts p1
