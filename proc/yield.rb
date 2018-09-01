def yielddemo(a,b)
    if block_given? 
       yield(a,b)
    end
end

yielddemo(2,3){|a,b|puts a;puts b}

def isok(a) 
    if a>0
    yield(a)
end

a=[-2,3,4,-1]



