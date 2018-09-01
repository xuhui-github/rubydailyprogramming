#!/usr/bin/ruby
class C
  def initialize(name)
    @name=name
  end

  def to_s
    "A C object named #{@name}"
  end
end

c=C.new("Emma")
puts c
