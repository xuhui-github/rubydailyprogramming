module OUT
   def self.included(base)
       base.extend IN
       base.include IN
       base.extend self
   end
   def outmethod
       puts "outmethod"
   end
   def self.outstatic
       puts "outstatic"
   end
   module IN
     def inmethod1
         puts "IN#inmethod1"
     end
     def self.inmethod1
         puts "IN#inmethod1static"
     end
   end
 end
 class A 
   include OUT
 end

a=A.new
A.inmethod1
A.outmethod
a.outmethod
A.inmethod1
A.outmethod

