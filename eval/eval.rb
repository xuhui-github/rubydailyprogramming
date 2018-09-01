#!/usr/bin/ruby
class Person


end

def add_accessor_to_person(accessor_name)
  Person.class_eval %Q{
    attr_accessor :#{accessor_name}
    }
end



add_accessor_to_person( :name)
add_accessor_to_person( :age)

p=Person.new
p.name='worker1'
p.age=23
puts "#{p.name} is #{p.age} years old."
add_accessor_to_person(:gender)

p.gender='male'
puts #{p.gender}
