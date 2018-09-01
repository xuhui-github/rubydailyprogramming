#!/usr/bin/ruby
module M1
 module M1Inner
   module M1InnerIn
   end
 end
 def my_method
     puts "M1#my_method"
 end
end
module M3
  def my_method
    puts "M3#my_method"
  end
end

module M2
  #include M3
  prepend M3  
  def my_method
     puts "M2#my_method"
  end
  
  module M2Inner
    NAME="M2Inner..."
    
    #def my_method_other
    def M2Inner.my_method_other
      puts "M2::M2Inner#my_method"
    end
  end
end
class C
  include M1
  include M2
end

class D<C;end;

puts D.ancestors.to_s
d=D.new
d.my_method
isM1=d.is_a?(M1)
isM2=d.is_a?(M2)
isM3=d.is_a?(M3)
puts "d si M3 "+isM3.to_s
puts "d is M1 "+isM1.to_s
puts "d is M2 "+isM2.to_s

puts D::M2Inner::NAME
#D::M2::M2Inner::my_method_other()
D::M2Inner::my_method_other()

puts '##############################'
=begin
C include M1 M2 and M2 include M3,M2 is a M3
d is a M1
d is a M2
d is a M3


M2 has M2Inner so D has M2Inner
=end

puts D.constants
puts D.constants.include?(:M2Inner).to_s
puts '##############################'


=begin
[D, C, M2, M3, M1, Object, Kernel, BasicObject]
M2#my_method
d is M1 true
d is M2 true
M2Inner...
M2::M2Inner#my_method
=end
