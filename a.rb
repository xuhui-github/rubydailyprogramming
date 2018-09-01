#!/usr/bin/ruby
class MyHash < Hash
end

a=MyHash.new
a.unshift('first')
a.unshift('second')
a.unshift('third')
puts a.length
