#!/usr/bin/ruby
class String
  def test()
      puts "test"
  end
end
s=String.new
puts String.instance_methods.grep(/test/)
s.test
puts s.methods.grep(/instance/)

class String
  alias_method :real_length ,:length
  def length
      return real_length>5? 'long' : 'short'
  end
end
s="2334"
puts s.length
puts s.real_length
