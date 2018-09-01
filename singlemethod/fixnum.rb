#!/usr/bin/ruby
class Fixnum
  alias_method :old_plus,:+
  def +(other)
      self.old_plus(other).old_plus(1)
  end
end
puts 2+1
