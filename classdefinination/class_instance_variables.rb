class MyClass
  @my_var=1
end

class MyClass
  @my_var=1
  @global="globalvar"
　
  #self.read类方法read
  def self.read;@my_var;end
  def write;@my_var=2;end
  def read;@my_var;end
  #self.write类方法write
  def self.write;@my_var=100;end
  
  #self.global类方法getglobal
  def self.getglobal
      @global
  end

  def getglobal
      puts "instance getglobal"
  end
end

obj=MyClass.new
puts obj.read
obj.write
puts obj.read
puts MyClass.read
MyClass.write
puts MyClass.read
#puts obj.getglobal obj没有getglobal方法

puts MyClass.getglobal
obj.getglobal
