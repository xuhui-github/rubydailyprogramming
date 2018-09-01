#!/usr/bin/ruby
module StringExtensions
  refine String do
    def  reverse
         "esrever"
    end
  end
end

module StringStuff
  using StringExtensions
   
  
  puts "my_string".reverse
  
end
puts "my_string".reverse
class Test
  using StringExtensions
#  include StringExtensions
  def test()
      puts "hello".reverse
  end
end

t=Test.new
t.test

puts t.is_a? StringExtensions
