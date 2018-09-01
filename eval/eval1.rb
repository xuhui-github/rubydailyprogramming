class Class
  def add_accessor(accessor_name)
      self.class_eval %Q{
        attr_accessor :#{accessor_name}
        }
  end
  def classname
      self.class_eval %Q{
        def getname
         self.name
        end
     }

  end
end

class Person
end
p=Person.new
Person.add_accessor :name
Person.add_accessor :age
p.name="hui"
p.age=23
puts "#{p.name} is #{p.age} years old."

class SomethingElse
  add_accessor :whatever
end

thing=SomethingElse.new
thing.whatever="What Ever"
puts thing.whatever
