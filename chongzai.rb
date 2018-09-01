#!/usr/bin/ruby
def test(a,b)
  puts "test(a,b)"
end

def test(*item)
  item.each {|elem|puts elem}
end
def test(a,b,c)
  puts "Just a test"
end

test('first','second','third')
test('one','two')
