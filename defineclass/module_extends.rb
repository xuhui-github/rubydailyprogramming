module MyModule
  def module_method
      puts "MyModule#module_method"
  end

  def self.module_method1
  end
end

class MyClass
  extend MyModule
end

c=MyClass.new
puts '---------------'
MyClass.module_method
puts '---------------'
#MyClass.module_method1
#c.module_method
#MyModule.module_method
MyModule.module_method1
MyClass.module_method
class MyClass1
  include MyModule
end
m1=MyClass1.new

MyModule.module_method1
MyModule::module_method1

