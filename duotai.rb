class Test
  def max(a,b)
    puts "max(a,b)..."
    if a>b
      return a
    else
      return b
    end
  end
 
 #max(*item)覆盖了前面定义的方法,Test实例只会调用max(*item)方法
 def max(*item) 
    max=item[0]
    item.each{ |val|  max=val if val>max }
    return max
  end
  
end

class SubTest < Test
 def max(a,b)
   puts "SubTest max"
   max=super(a,b) #调用父类方法不是super.methodname,SUPER()
   printf "max is %d\n",max
   return max
 end
 
 def max(*item)
   puts "------SubTest------"
   puts item.length
   max=super(*item)
   puts "------end------"
   return max
 end
end

class AnotherTest < Test
end

t=Test.new
puts t.max(2,3)
puts t.max(2,3,4)
t1=SubTest.new
t1.max(12,14)
t1.max(101,102,103)
a=AnotherTest.new
puts a.max(12,22)
