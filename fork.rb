#!/usr/bin/ruby
if fork.nil?
   exec "./myarray.rb"
end
puts "This Ruby script now runs alongside some_other_file.rb"
