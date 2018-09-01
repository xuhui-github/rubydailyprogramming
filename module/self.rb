class MyClass
  def testing_self
      @var=10
      my_method
      self
  end
  attr_reader :var
  
  def my_method
      @var=@var+1
  end
end

o=MyClass.new
puts o.testing_self
puts o.var
