#!/usr/bin/ruby
str="just a regular str"
def str.title?
    self.upcase==self
end
puts str.title?
puts str.methods.grep(/title?/)
puts str.singleton_methods.to_s
