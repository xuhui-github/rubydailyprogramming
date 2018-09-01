class Test
  def classname
      self.class.name
  end
  
end

t=Test.new
t.instance_eval @Q{
  def classname
    t.class.name
  end
  }

puts t.classname
puts t.classname
