require 'tmpdir'
tempfilename=File.join(Dir.tmpdir,"myapp.dat")
tmpfile=File.new(tempfilename,'w')
tmpfile.puts "This is only temporary"
tmpfile.close
File.delete(tempfilename)
