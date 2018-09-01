class AException<Exception
end

class BException<Exception
end

begin
  puts "AException"
raise AException.new
  puts "BException"
raise BException.new
rescue AException=> a 
  puts "AException got"
rescue BException=> b
  puts "BException get"
ensure
  puts "ensure..."
end
