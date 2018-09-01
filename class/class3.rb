class Point
  def initialize(x,y)
      @x,@y=x,y
  end
  attr_reader :x,:y

  def +(other)
      raise TypeError,"Point argument expected" if not other.is_a? Point
      #raise TypeError,Point argument expected" if unless other.is_a? Point

      Point.new @x+other.x,@y+other.y
  end

  def -@
     Point.new(-@x,-@y)
  end

  def *(scalar)
     Point.new @x*scalar,@y*scalar
  end

  def to_s
     "{#@x,#@y}"
  end

  def [](index)
      case index
        when 0, -2 
             @x
        when 1, -1 
             @y
        when :x, "x" 
              @x
        when :y, "y"
              @y
        else 
              nil
      end
  end
  
  def each
      yield @x
      yield @y
  end

#  def ==(o)
#      return false if unless o.is_a? Point
#      return true if @x==o.x and @y==o.y
#  end
  
  def ==(o)
      if o.is_a? Point
         @x==o.x && @y==o.y
      else
         nil
      end
 end

 def hash
     @x.hash+@y.hash
 end

 def hash
    code=17
    code=37*code+@x.hash
    code=37*code+@y.hash
 end

 def <=>(other)
    return nil unless other.is_a? Point
    @x**2+@y**2<=>other.x**2+other.y**2
 end

 def add!(other)
     @x+=other.x
     @y+=other.y
 end

 def add(other)
     t=self.dup
     puts t
     t.add!(other)
 end

end
p=Point.new 2,33
puts p.x
puts p.y
p1=Point.new 100,100
puts p1+p
puts -p1
puts p1*10
puts p[:x]
puts p["x"]
puts p[0]
puts p[1]
puts "p==p1" if p==p1
a=Point.new 2,5
b=Point.new 2,5
puts "a==b" if a==b
puts "a.hash="+a.hash.to_s
#puts a.methods.to_s
puts a<=>b
a.add!(b)
puts a
c=Point.new 100,100
v=a.add(c)
puts a


