#!/usr/bin/ruby
module OutModule
   module InnerModule
     X="InnerModule"
     class Inner
       def test
         puts "test"
       end
       def nesting
         Module::nesting
       end
     end
   end
   class MyClass
     NAME="MyClass"
     def message
         "MyClass"
     end

   end
end

class OuterClass
  include OutModule
end

puts OutModule::InnerModule::X
obj=OutModule::MyClass.new
puts obj.message
  

obj1=OutModule::InnerModule::Inner.new
obj1.test
puts "---------OutModule::InnerModule::Inner.nesting-------"
puts obj1.nesting
puts "-----------------------------------------------------"

puts "---------OutModule.constants---------"
puts OutModule.constants
puts "---------OutModule::InnerModule.constants------"
puts OutModule::InnerModule.constants
puts "-----------------------------------------------"
puts "OutModule::InnerModule.constants.include? :Inner"
puts OutModule::InnerModule.constants.include? :Inner
puts "OutModuse.constants.include? :MyClass"
puts OutModule.constants.include? :MyClass

obj=OuterClass.new
v=obj.is_a? OutModule
puts v
v=obj.is_a? OutModule::InnerModule
puts v
