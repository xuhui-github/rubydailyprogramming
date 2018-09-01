#!/usr/bin/ruby

class Parent
  def initialize
     puts "initialize in Parent"
  end
end

class Child<Parent
  def initialize(stuff)
    @stuff=stuff;
    super()
  end
end

stuff=['first','second','third'];
son=Child.new(stuff)
