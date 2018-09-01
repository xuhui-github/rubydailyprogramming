#!/usr/bin/ruby
def test(msg,**opt)
    puts msg
    if opt.has_key? :name 
       puts opt[:name]
    end
end
test( 'test...', :name=>'hui')

week={1=>"Monday",2=>"Tuesday",3=>'Wensday',4=>'Thursday',5=>'Friday',6=>'Saturday',7=>'Sunday'}
week.each {|k,v| if k==2;print v;end}
week.each_key {|key| puts week[key]}
