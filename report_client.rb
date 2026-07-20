require 'socket'

sock = TCPSocket.new('localhost', 80)

sock.puts "Michael"

while line = sock.gets
  puts line
end

sock.close