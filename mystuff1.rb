class MyStuff

  def initialize()
      @tangerine="And now a thousand years between"
  end

  attr_reader :tangerine

  def apple()
    puts " I AM CLASSY APPLES!"
  end
end

stuff=MyStuff.new
puts stuff.tangerine
stuff.apple()
