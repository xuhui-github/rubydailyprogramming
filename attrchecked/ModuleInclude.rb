#!/usr/bin/ruby
module M
  def ma
      puts "M#ma"
  end
end
module N
 include M
 def n
     puts "N#n"
 end
end
class A
  include N
end
a=A.new
a.ma
a.n

=begin
def n
end
上面的ｎ只用于混型
N.n error N does not have method n
def N.n
  puts "N#n"
end
def self.n
end
制定了N.n或self.n定义的才是模块Ｎ的方法
N.n
N has method n
=end


