#!/usr/bin/ruby
class MyClass
  @count=0
  def self.increase
      @count=@count+1
  end
  def initialize
      MyClass.increase()     
  end
  def self.count
      @count
  end
=begin
  def count
      self.count self.count is current count instance method
  end
=end
  
  def count 
      MyClass.count
=begin
      调用类方法
=end
  end


end

c=MyClass.new
a=MyClass.new
puts MyClass.count
puts a.count
