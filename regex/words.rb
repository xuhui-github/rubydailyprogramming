#!/usr/bin/ruby
"this is a test".scan(/\b\w+\b/){|w|puts w}
words="this is a test".scan(/\b\w+\b/);
puts words.length
words.each_index{|i| printf "a[i]=%d\n",i}
words.map{|elem| elem*2}
words.each{|elem|puts elem}
