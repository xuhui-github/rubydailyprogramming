hello ruby/ruby
File.open("text.txt").each {|line| puts line}
File.new("text.txt",'r').each {|line| puts line}
f=File.new("text.txt",'r')
puts f.gets
f.close

File.open("text.txt") do |f|
  puts f.gets
end
