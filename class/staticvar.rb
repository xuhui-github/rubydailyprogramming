class A
  @@value=1
  def A.value;@@value;end
  def A.setvalue(v);@@value=v;end
end

print A.value

class B < A
  @@value=2
end

print A.value

class C < A;@@value=3;end

print B.value
print A.value
A.setvalue 5
puts C.value
