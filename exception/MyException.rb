class MyException < Exception
  def initialize(filename=__FILE__,line=__LINE__)
      @filename=filename
      @line=line
  end
  attr_accessor :filename,:line
end

begin
  raise MyException.new(__FILE__,__LINE__)
rescue MyException => e
  puts e.filename
  puts e.line
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "ensure..."
end
