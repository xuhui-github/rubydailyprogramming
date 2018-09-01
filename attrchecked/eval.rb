#!/usr/bin/ruby

def add_attribute(cls,attr)
    eval "
     class  #{cls}
       def  #{attr}=(value)
            @#{attr}=value
       end
       def  #{attr}
            @#{attr}
       end
     end"
end

class A
end
add_attribute(A,:name)
a=A.new
a.name='hui'
puts a.name

class Class
  def add_accessor(accessor_name)
      self.class_eval %Q{
          def self.staticmethod
              puts "static"
          end
          def test
              puts "test"
          end
          def #{accessor_name}
              @#{accessor_name}
          end

          def #{accessor_name}=(value)
              @#{accessor_name}=value
          end
          }
  end
end

def add_accessor1(cls,attrname)
  cls.class_eval %Q{
    def #{attrname}
        @#{attrname}
    end

    def #{attrname}=(value)
        raise "Invalid value" unless value
        @#{attrname}=value
    end
 }
end

def add_accessor2(cls,attr)
  cls.class_eval do
    define_method "#{attr}=" do |value|
      raise 'Invalid attribute' unless value
      instance_variable_set("@#{attr}", value)
    end
    define_method "#{attr}" do
      instance_variable_get("@#{attr}")
    end
  end
end

def add_checked_attribute(kclass,attr,&validation)
  kclass.class_eval do
    define_method "#{attr}=" do |value|
      raise "Invalid value" unless validation.call(value)
      instance_variable_set("@#{attr}",value)
      end
    define_method "#{attr}" do
      instance_variable_get("@#{attr}")
      end
    end
end


class Person
  add_accessor :name
  add_accessor :age
end

p=Person.new
p.name='hui'
p.age=23
puts p.name
puts p.age
Person.staticmethod
p.test
p=Proc.new {puts "Proc running"}
p.call

add_accessor1(String,:name)
str="he"
str.name="aaa"
puts str.name

class A
end
add_accessor2(A,:name)
a.name="A"
puts a.name
            
