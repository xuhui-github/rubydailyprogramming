#!/usr/bin/ruby
class Parent
  def alter()
    puts "alter() in Parent"
  end
end

class Child<Parent
  def alter()
    puts "before Parent alter()"
    super()
    puts "after Parent alter()"
  end
end

dad=Parent.new
son=Child.new

dad.alter()
son.alter()
