#!/usr/bin/ruby
if(class MyClass;end)
  puts "Empty class definition is true!"
else
  puts "Empty class definition is false!"
end

if(class MyCLass;1;end)
  puts "Class definition with number 1 in it is true!"
else
  puts "Class definition with number 1 in it is false!"
end

if(def m;"A call to this method will be 'true'";end)
  puts "Method definition is true!"
else
  puts "Method definition is false!"
end

if "string"
  puts "String appear to be true!"
else
  puts "String appear to be false!"
end

if 100>50
  puts "100 is greater than 50!"
else
  puts "100 is not greater than 50!"
end
