s1,s2="abc","def"

s1.instance_eval do
  def swoosh!;reverse;end
end

s1.swoosh!
a=s1.swoosh!
puts a


def s1.test
    puts "test..."
end

s1.test

singletonclassname=class<< s1
  def test1
      puts "test1"
  end
  self  
end

s1.test1

puts
puts s1.singleton_class.instance_methods.to_s
=begin
[:test, :swoosh!, :test1, :include?, :%, :*, :+, :unicode_normalize, :to_c, :unicode_normalize!, :unicode_normalized?, :count, :partition, :unpack, :encode, :encode!, :next, :casecmp, :insert, :bytesize, :match, :succ!, :next!, :upto, :index, :rindex, :replace, :clear, :chr, :+@, :-@, :setbyte, :getbyte, :<=>, :<<, :scrub, :scrub!, :byteslice, :==, :===, :dump, :=~, :downcase, :[], :[]=, :upcase, :downcase!, :capitalize, :swapcase, :upcase!, :oct, :empty?, :eql?, :hex, :chars, :split, :capitalize!, :swapcase!, :concat, :codepoints, :reverse, :lines, :bytes, :prepend, :scan, :ord, :reverse!, :center, :sub, :freeze, :inspect, :intern, :end_with?, :gsub, :chop, :crypt, :gsub!, :start_with?, :rstrip, :sub!, :ljust, :length, :size, :strip!, :succ, :rstrip!, :chomp, :strip, :rjust, :lstrip!, :tr!, :chomp!, :squeeze, :lstrip, :tr_s!, :to_str, :to_sym, :chop!, :each_byte, :each_char, :each_codepoint, :to_s, :to_i, :tr_s, :delete, :encoding, :force_encoding, :sum, :delete!, :squeeze!, :tr, :to_f, :valid_encoding?, :slice, :slice!, :rpartition, :each_line, :b, :ascii_only?, :hash, :to_r, :<, :>, :<=, :>=, :between?, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :method, :public_method, :singleton_method, :is_a?, :extend, :define_singleton_method, :to_enum, :enum_for, :!~, :respond_to?, :display, :object_id, :send, :nil?, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
=end

puts s1.singleton_class.to_s
puts singletonclassname.to_s
=begin
singletonclassname.new
-:35:in `new': can't create instance of singleton class (TypeError)
	from -:35:in `<main>'
=end

puts s1.respond_to?(:swoosh!)
puts s2.respond_to?(:swoosh!)



