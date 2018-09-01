def factorial(n)
  if n<0
   raise "argument must >0"
  elsif n==1
   return 1
  else
   return n*factorial(n-1)
  end
end
printf  "factorial(10)=%d\n",factorial(10)
