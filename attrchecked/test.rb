#!/usr/bin/ruby
require "test/unit"

class Person
  def initialize(name,age)
      @name=name
      @age=age
  end
  attr_accessor :name,:age
end

class PersonTest < Test::Unit::TestCase
  def setup
      @p=Person.new("hui",23)
  end

  def test_name
      assert_equal 23,@p.age
  end

  def test_age
      assert_equal 'hui',@p.name
  end
end


