class User
  def self.status
      :hmm
  end

  def status
      :admin
  end
end

u=User.new
puts u.status
puts User.status


