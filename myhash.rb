class MultiHash < Hash
  def []=(key,val)
      if has_key? key
         v=
            v.push val
        
      else
         super(key,Array.new)
      end
  end
end

h=MultiHash.new
h['first']=1
h['first']=2
h['first']=3
puts h['first']
