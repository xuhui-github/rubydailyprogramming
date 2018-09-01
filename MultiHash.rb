#!/usr/bin/ruby
class MultiHash < Hash
  def []=(k,v)
      if has_key? k
         value=fetch k
         value.push v
      else
         super(k,Array.new)
         value=fetch k
         value.push v
      end
  end
end
h=MultiHash.new
h['first']=1
h['first']=2
h['first']=Array.new
h['first']=MultiHash.new
puts h
