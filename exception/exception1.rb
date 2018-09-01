#!/usr/bin/ruby

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end

begin
  raise 'A test exception'
rescue Exception=> e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring exception"
end

begin
  puts "I am not raising exception"
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
  puts "Congratulations-- no errors"
ensure
  puts "Ensuring execution"
end
