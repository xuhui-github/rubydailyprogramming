class User
end
User.instance_eval do
  @Female="Female of User"
  def gender
      :female
  end
  def self.Female
      @Female
  end
  def self.setFemale(female)
      @Female=female
  end
end
puts User.gender
u=User.new

u.instance_eval do
  def gender
      "female just"
  end
end

puts u.gender
puts User.Female
User.setFemale("Changing Female of User")
puts User.Female
puts u.Female
