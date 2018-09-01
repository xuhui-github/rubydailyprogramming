class MyClass
  puts "Hello"
end
result=class Other
  self
end
puts result

result=class WithValue
  23
end
puts result

class C
  def m1
      puts "C#m1"
      def m2
          puts "C#m2"
      end
  end
end

class D < C
end

puts C.instance_methods(true).to_s

d=D.new
d.m1()
d.m2
