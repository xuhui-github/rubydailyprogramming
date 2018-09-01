require 'socket'

sender=UDPSocket.new
sender.send("hello",0,'localhost',1234)
