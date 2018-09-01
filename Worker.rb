class Worker
  include Comparable
  attr_reader :salary
  
  def salary
    @salary
  end
  
  def initialize(name,salary)
    @name=name
    @salary=salary
  end
  
  def <=>(other)
    return @salary<=>other.salary
  end
end
a=Worker.new 'worker1',1200
b=Worker.new 'worker2',8000

puts a<b
