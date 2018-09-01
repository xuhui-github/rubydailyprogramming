#!/usr/bin/ruby
class MyFile
  attr_accessor :handle

  def initialize(filename,mode='r')
      @handle=File.new(filename,mode)
  end
  
  def finish
      @handle.close
  end

  def readline
      @handle.gets
  end
  
  def each
      line=readline
      while line!=nil
        yield(line)
        line=readline
      end
  end

  def rewind
      @handle.seek(0,IO::SEEK_SET)
  end

  def fileno
      @handle.fileno
  end
 
  def read
      @handle.each_byte { |b| return b}
  end
  def read_n_line(n)
      result=''
      n.times do
      result=result+ @handle.gets
      end
      result
  end
end

f=MyFile.new('text.txt')
printf "f.fileno=%d\n",f.fileno
puts f.readline
f.finish

f=MyFile.new('text.txt')
f.each {|line| puts line}
f.finish
f=MyFile.new('text.txt','r+')
c=f.read
puts c
c=f.read
c=f.read
c=f.read
puts c
f.rewind
v=f.read_n_line(1)
puts v
