
class String 
  def to_alphanumeric
      gsub(/[^\s\w]/,'')
  end
end
