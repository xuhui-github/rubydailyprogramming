#!/usr/bin/ruby
class Paragraph
  def initialize(text)
      @text=text
  end
  def reverse;@text.reverse;end
  def upcase;@text.upcase;end
end

p=Paragraph.new "P"
def p.title?
    @text==@text.upcase
end
puts p.title?
