#!/usr/bin/ruby

class Computer
  def initialize(computer_id,data_source)
      @id=computer_id
      @date_source=data_source
  end
  
  def mouse
      info=@data_source.get_mouse_info(@id)
      price=@data_source.get_price_info(@id)
      
