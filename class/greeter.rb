class WorldGreeter
  def greet
      puts "#{greeting} #{who}"
  end
  def greeting
      "hello"
  end
  def who
      "world"
  end
end

w=WorldGreeter.new
w.greet

class SpanishWorldGreeter<WorldGreeter
  def greeting
      "hola"
  end
end

s=SpanishWorldGreeter.new
s.greet

class AbstractGreeter 
  def greet
      puts "#{greeting} #{who}"
  end
end

class WorldGreeter <AbstractGreeter
  def greeting;"hello";end
  def who;"world";end
end
WorldGreeter.new.greet
