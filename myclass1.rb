#!/usr/bin/ruby
class Parent
  def override()
    puts "Parent override()"
  end
end
class Child<Parent
  def override()
    puts "Child override()"
  end
end

parent=Parent.new
child=Child.new

parent.override();
child.override();
