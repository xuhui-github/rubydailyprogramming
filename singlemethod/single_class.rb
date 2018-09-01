#!/usr/bin/ruby
class C
  class << self
    def a_class_method
        puts "C#a_class_method"
    end
  end
  def a_method
      puts "C#a_method"
  end
end

class D < C
end

obj=D.new
obj.a_method
C.a_class_method
puts "C.singleton_class is "+C.singleton_class.to_s
puts "D.singleton_class is "+D.singleton_class.to_s
puts "D.singleton_class.superclass is "+D.singleton_class.superclass.to_s
puts "C.singleton_class.superclass is "+C.singleton_class.superclass.to_s
