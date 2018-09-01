class Point 
  @x,@y=0,0
  def initialize(x,y)
      @x=x
      @y=y
  end
  def to_s
      "{#@x,#@y}"
  end

end
p=Point.new 1,2
puts p


