#!/usr/bin/ruby

a=Array.new(['first','second','third'])
puts a.length
a.push('fouth')
puts a.length

b=Array.new(10,0)
b.each{|item|puts item}
b.each_index{|index| puts b[index]}

b.delete(0)
printf "array b length=%d\n",b.length



