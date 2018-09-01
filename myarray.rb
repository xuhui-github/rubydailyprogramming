#!/usr/bin/ruby
class MyArray < Array
  
  def push(*elem)
      puts "push..."
      elem.each{|it| self[self.length]=it}
    
  end
end

class Array1 < Array
  def push(*elem)
      super(elem)#调用超类的push方法
  end
end

a=MyArray.new
a.push(2)
['first','second','third'].each {|elem| a.push(elem)}
puts a.length

b=Array1.new
b.push('first')
puts b.length
