module MyModule
  def module_method
      puts "Module method"
  end
end
module Module1
  def module_method1
      puts "Module1#module_method"
  end
end
class Parent
  def parent_method
      puts "Parent#parent_method"
  end
end

class MyClass extend MyModule,Module1
  def instancemethod
      puts "MyClass#instancemethod"
  end
  def self.testOfMyClass
      puts "testOfMyClass"
  end
end
MyClass.module_method
MyClass.module_method1
obj1=MyClass.new

class SubClass < MyClass
end
s=SubClass.new
puts MyClass.singleton_class.instance_methods.to_s
puts SubClass.singleton_class.instance_methods.to_s

SubClass.module_method
SubClass.module_method1
SubClass.testOfMyClass
s.instancemethod

obj=Object.new
obj.extend MyModule
obj.module_method


