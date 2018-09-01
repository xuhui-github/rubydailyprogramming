class AbstractGreeter
  def greet
      puts "#{greeting} #{who}"
  end
end

class WorldGreeter <AbstractGreeter
  def greeting;"hello";end
  def who;"world";end
end

class SpanishGreeter <AbstractGreeter
  def greeting;"hola";end
  def who;"world";end
end

WorldGreeter.new.greet
SpanishGreeter.new.greet
           
