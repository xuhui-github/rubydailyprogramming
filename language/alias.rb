def hello
  puts "Hello World"
end

alias orginal_hello hello

def hello
  puts "Your attention please"
  orginal_hello
  puts "This has been a test"
end

hello
