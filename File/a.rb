#!/usr/bin/ruby
f=File.new("text1.txt",'r')
catch(:end_of_file) do
  loop do
   throw :end_of_file if f.eof?
   puts f.gets
  end
end
f.close
  
