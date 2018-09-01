#!/usr/bin/ruby

class Paragraph
  def initialize(text)
      @text=text
  end
  attr_reader :text

  def title?;@text.upcase==@text;end
  def reverse;@text.reverse;end
  def upcase;@text.upcase;end
end

def index(paragraph)
    add_to_index(paragraph) if paragraph.title?
end
index=Array.new()
def add_to_index(paragraph)
    index.push(paragraph)
end

paragraph="any string can be a paragraph"
def paragraph.title?
    self.upcase==self
end
puts paragraph.title?

paragraph=Paragraph.new "HELLO"
puts paragraph.title?

def paragraph.title?
=begin
    self.text.upcase==self.text
    @text.upcase==@text
=end
    self.upcase==@text
end
puts paragraph.title?
