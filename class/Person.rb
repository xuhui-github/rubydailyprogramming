class Person
  def initialize(name,age)
      @name,@age=name,age
  end
  attr_reader :name,:age
  /*
  def name
      @name
  end
 
  def age
      @age
  end
  */
  def <=>(o)
      if @name > o.name
         return 1
      elsif @name < o.name
         return -1
      else
         if @age > o.age
            return 1
         elsif @age < o.age
            return -1
         else
            return 0
         end

       end
  end
end
p=Person.new 'a',23
p1=Person.new 'a',24
v=p<=>p1
puts v
         
