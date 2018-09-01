#!/usr/bin/ruby

require 'rubygems'
require 'net/ping'

if Net::PingExternal.new('www.baidu.com').ping
   puts "Pong!"
else
   puts "No reponse"
end
