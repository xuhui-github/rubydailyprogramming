class MyClass
  def initialize
    @my_variable="Hello world!"
  end
end

obj=MyClass.new
obj.instance_eval { puts @my_variable}


class Person
  def name
    @name
  end

  def name=(name)
    @name=name
  end
end

p=Person.new
p.name="just a person"
puts p.name

class Person
  attr_accessor :name
end

