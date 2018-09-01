#!/usr/bin/ruby
if fork.nil?
   puts "Child process"
else
   wait
   puts "This Ruby script now runs alongside some_other_file.rb"
