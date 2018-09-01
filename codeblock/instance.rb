#!/usr/bin/ruby
class Person
  def initialize(name)
      @name=name
  end
  def to_s
      @name
  end
end
p=Person.new("hui")
puts p.instance_variable_get('@name')
p.instance_variable_set('@name','HH')
puts p
puts p.instance_variable_get(:@name)
puts p.instance_variable_get(:@name)
puts p.instance_variable_defined? :@age
p.instance_variable_set :@age,23
puts p.instance_variable_defined? :@age
