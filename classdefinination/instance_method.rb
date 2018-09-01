#!/usr/bin/ruby

str="HELLO"
def str.title?
    return self.upcase==self
end

puts str.title?
a="HELLO"
begin
  a.title?
rescue NoMethodError => e
  puts e.message
  puts e.backtrace.inspect
end
  

