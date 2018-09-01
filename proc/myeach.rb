def myarrayeach(a)
    raise "Invalid argument " unless a.is_a? Array
    i=0
    while i<a.length
      yield(a[i])
      i=i+1
    end
end

a=['a','aaa','b','bbb']
myarrayeach(a) {|e| puts e if e.length()==3}

def yield_multi_arg
    i=1
    while i <=10
     yield "field"+i.to_s,"field"+i.to_s,"field"+i.to_s
     i=i+1
    end
end  

yield_multi_arg {|x,y,z| puts x+" "+y+" "+z}
yield_multi_arg do |x,y,z|
  puts x+" "+y+" "+z
end

p=Proc.new do
  puts "Proc.new"
end
p.call()
p=Proc.new {
  puts "Proc.new"
}
p.call()
p=Proc.new{  4}
v=p.call
puts v
p=Proc.new{ |a,b|
  puts a;
  puts b;
}
p.call("firstarg","secondarg")

def funwithprocarg(a,b,&p)
    p.call(a,b)
end
puts "-----------------------"
v=funwithprocarg("first","second") {|a,b|a.length==b.length}
puts v

p=Proc.new do |a,b|
  puts a.reverse
  puts b.reverse
end
=begin
funcwithprocarg("first","second",p)
p changed into &p
funcwithprocarg("first","second",&p)
=end
funwithprocarg("first","second",&p) 
