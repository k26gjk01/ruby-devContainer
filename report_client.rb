require 'socket'

sock = TCPSocket.new('localhost', 80)

sock.print "Michael\r\n"

while line = sock.gets
  puts line
end

sock.close