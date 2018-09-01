#!/usr/bin/ruby
class Item
  $count=0
  
  def initialize()
    $count=$count+1
    printf "Item %d\n",$count
  end
end

a=Item.new
b=Item.new
