#!/usr/bin/ruby

class Parent
  def implicit()
    puts "Parent implicit()"
  end
end
class Child<Parent
end

dad=Parent.new
child=Child.new

dad.implicit
child.implicit
