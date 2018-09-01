#!/usr/bin/ruby
module M
  module C
    module M2
      Module.nesting
    end
  end
end

class Test
  include M::C::M2

  def levels
      Module.nesting
  end

  def nesting
      Module.nesting
  end
end

t=Test.new
levels=t.levels
puts levels.length
puts levels
puts t.is_a? M::C::M2

t1=Test.new
levels=t1.levels
puts "**********************"
puts levels
puts t1.nesting
