def sequence(args)
  n=args[:n]
  m=args[:m]
  c=args[:c]||0
  a=[]
  n.times {|i| a<<i*m+c}
  a
end
seq=sequence({:n=>3,:m=>5})
puts "#{seq}"

def sequence1(n,m,c=0)
  i=0
  while i<n
   yield i*m+c
   i=i+1
  end
end

sequence1(3,5) {|v| puts "#{v}"}
puts "******************"
sequence1(4,4,1){|v| puts "#{v}"}

class Iter
  def initialize(str)
      @str=str
  end
  def each_char
      i=0
      while i<@str.length
        yield @str[i]
        i=i+1
      end
  end
end

iter=Iter.new("Hello world")
iter.each_char {|ch| puts ch}

