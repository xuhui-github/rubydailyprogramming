class Point 
  @x,@y=0,0
  def initialize(x,y)
      @x=x
      @y=y
  end
  def to_s
      "{#@x,#@y}"
  end
  def x
      @x
  end

  def y
      @y
  end

end
p=Point.new 1,2
puts "p.x=#{p.x}"
puts "p.y=#{p.y}"
puts p


