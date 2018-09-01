#!/usr/bin/ruby
obj=Object.new
def obj.+(other_obj)
  "Trying to add somethind to me,eh?"
end
puts obj+100
