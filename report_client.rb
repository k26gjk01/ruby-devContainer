require 'socket'

cmd = ""

if ARGV[0] != nil
  cmd = cmd+ARGV[0]+" "
end

if ARGV[1] != nil
  cmd = cmd+ARGV[1]+" "
end

sock = TCPSocket.new('localhost', 80)

sock.print "#{cmd}\r\n"

while line = sock.gets
  print line
end

sock.close