#!/usr/bin/ruby

class C
  def public_method
      #self.private_method
      private_method
  end
  
  private
  def private_method
      puts "C.private_method"
      printf "%s\n","C.private_method"
  end
end
C.new.public_method
