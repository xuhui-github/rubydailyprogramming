#!/usr/bin/ruby
def max(first,*rest)
  max=first
  rest.each {|x|max=x if x>max}
  return max
end

maxval=max(2,2,2,111,555)
printf "The max val is %d\n",maxval
a=[2,2,2,100,444]
maxval=max(*a)
printf "The max val is %d\n",maxval
maxval=max(a)
puts "The max val is #{maxval}"
maxch=max(*"hello world".each_char)
putc maxch
