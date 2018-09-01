def add_method_to(a_class)
    a_class.class_eval do
      def m; "Hello";end
    end
end

class A
end
add_method_to(A)

a=A.new
puts a.m

def add_method_to1(a_class)
    a_class.class_eval do
      def name
          @name
      end
      def age
          @age
      end
    end
end

#def add_method_to2(a_class,methodname)
#    a_class.class_eval do
#      "def #{methodname};@#{methodname};end"
#    end
#end

#def add_method_to2(a_class,methodname)
#    eval "attr_accessor :#{methodname};"
#end

def add_method_to2(cls,name)
    cls.class_eval %Q{
      def #{name}
          @#{name}
      end
      
      def #{name}=(value)
          @#{name}=value
      end
    }
end

def add_test(cls)
    cls.class_eval %Q{
      def test
          puts "test..."
      end
    }
end

class Person
  def initialize(name,age,addr)
      @name=name
      @age=age
      @addr=addr
  end
end
p=Person.new 'hui',23,'addr'

add_method_to1(Person)
add_method_to2(Person,:addr)
puts p.name
puts p.age
puts p.addr
p.addr="addr1"
puts p.addr
add_test(Person)
p.test

