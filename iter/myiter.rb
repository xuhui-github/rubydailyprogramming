class MyArray 
  def initialize(a)
      raise TypeError,"Argument must be an Array" unless a.is_a? Array
      @items=a
      @index=0
  end

  def iter()
      if @index<@items.length
         result=@items[@index]
         @index=@index+1
         yield result
      else
         nil
      end
  end

  def each()
      idx=0
      #while idx<len(@items)
        while idx<@items.length
        cur=@items[idx]
        idx=idx+1
        yield cur
      end
  end

  
end

def each_with_multival()
    yield 1,'Ana'
    yield 2,'Tom'
end


it=MyArray.new(['first','second','third'])
       
it.iter {|elem| puts elem}
it.iter {|elem| puts elem}

it.each {|item| printf "current item is %s\n",item.to_s}
each_with_multival {|id,elem| printf "id=%d name=%s\n",id,elem}
