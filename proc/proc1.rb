def greet
    yield
end
greet {puts "Hi"}


def verbose_greet(*arg,&p)
    yield
    printf "%s ",arg[0]
    printf "%s\n",arg[1]
end
verbose_greet("Dave","Loyal customer"){puts "Hi"}

def with_arg_greet(firstname,lastname,&p)
    yield(firstname,lastname)
end
with_arg_greet("Dave","Loyal custormer") do |first,last|
   printf "Hello %s %s\n",first,last
end
=begin
with_arg_greet("Dabe","Loyal customer"){|first,last|
  printf "Hello %s %s\n",first,last
}
=end

p=Proc.new {|first,last| printf "%s %s in Proc",first,last}
with_arg_greet("Dave","Loyal customer",&p)
