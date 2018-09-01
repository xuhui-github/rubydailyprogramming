#!/usr/bin/ruby

class Person
  def initialize(name,age)
    @name=name
    @age=age
    printf  "People initialze(%s,%d)\n",@name,@age
  end
end

class Student<Person
  def initialize(name,age,score)
    super(name,age)
    @score=score
    printf "score=%d\n",@score
    puts "Student initialize"
  end
end

stu=Student.new('john',23,100)

