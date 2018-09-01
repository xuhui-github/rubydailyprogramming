#!/usr/bin/ruby

require 'rubygems'
require 'net/ping'

if Net::PingTCP.new('www.baidu.com',80).ping
   puts "Pong!"
else
   puts "No response"
end

