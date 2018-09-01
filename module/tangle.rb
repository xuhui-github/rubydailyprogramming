#!/usr/bin/ruby
module Printable
  def print
      puts "Printable#print"
  end

  def prepare_cover
  end
end

module Document
  def print_to_screen
      prepare_cover
      format_for_screen
      print
  end
  def format_for_screen
  end
  
  def print
      puts "Document#print"
  end
end

class Book
  include Printable
  include Document
  #include Printable
end

b=Book.new
b.print_to_screen

