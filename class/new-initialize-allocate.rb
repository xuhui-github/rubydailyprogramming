class Person

  def initialize(name,age) #default private method
      @name=name
      @age=age
  end
  
  def Person.new(*args)
      puts "new....."
      o=self.allocate
      o.initialize(*args)

      o
  end
 
  def to_s
      "#@name #@age"
  end
end

p=Person.new "hui",23
puts p
p1=Person.new "HUI",222
puts p1
