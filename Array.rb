#!/usr/bin/ruby
a=Array.new(3)
puts a
b=Array.new(3,"default value")
puts b
n=0
c=Array.new(3){n+=1;n*10}
puts c
