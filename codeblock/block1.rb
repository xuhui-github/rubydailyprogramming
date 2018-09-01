#!/usr/bin/ruby

def method(a,b)
    return a+yield(a,b) 
end

def method1(s)
    yield(s)
end


v=method(1,2) {|x,y|(x+y)*3}
puts v
v=method1("hello") {|s| s*3}
puts v

