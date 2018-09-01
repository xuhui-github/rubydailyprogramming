

module StringExtensions
  refine String do
    def to_alphanumeric
        gsub(/[^\s\w]/,'')
    end
  end
end

using StringExtensions
puts "Hello ,,,world".to_alphanumeric



