def makeproc(&p)
    p
end

adder=makeproc {|x,y| x+y}
puts adder.call(2,2)


