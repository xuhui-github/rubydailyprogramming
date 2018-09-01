#!/usr/bin/ruby

class Parent
  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end
  
  def alter()
    puts "PARENT alter()"
  end
end

class Child<Parent
  def override()
    puts "CHILD override()"
  end
  
  def alter()
    puts  "CHILD before parent alter()"
    super()
    puts "CHILD after parent alter()"
  end
end

dad=Parent.new()
son=Child.new()

dad.implicit();
son.implicit();
puts "=================="
dad.override();
son.override();
puts "=================="
dad.alter()
son.alter()
