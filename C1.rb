class C
  def initialize
    @x=1
  end
end
c=C.new
c.instance_eval { puts @x}
puts c

c1=Class.new
c1.class_eval do
  def some_method
    puts "Created in class_eval"
  end
end

c.some_method
