#!/usr/bin/ruby
def a_method
    return yield if block_given?
    "no block"
end
puts a_method
puts a_method {"hello"}
