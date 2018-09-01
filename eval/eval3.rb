class Class
  def add_accessor(accessor_name)
      self.class_eval %Q{
          def #{accessor_name}
              @#{accessor_name}
          end

          def #{accessor_name}=(value)
              @#{accessor_name}=value
          end
          }
  end
end

class Person
  add_accessor :name
  add_accessor :gender
end

p=Person.new
p.name='hui'
p.gender='male'
puts p.name
puts p.gender

def add_method_to(cls,name)
    cls.class_eval %Q{
        def #{name}
            @#{name}
        end
        def #{name}=(value)
            @#{name}=value
        end
    }
end

class A
end

add_method_to(A,:name)
add_method_to(A,:age)
a=A.new
a.name='hui'
puts a.name
