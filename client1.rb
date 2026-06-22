#client1.rb
require 'socket'

host = 'www.is.kyusan-u.ac.jp'
port = 'http'
path = '/~toshi/'
version = 'HTTP/1.1'

sock = TCPSocket.new host, port
cmd = 'GET ' + path + ' ' + version + "\r\n"
cmd2 = 'Host: ' + host + "\r\n"
cmd_end = "\r\n"

pp cmd
sock.print cmd
sock.print cmd2
sock.print cmd_end

is_body = false
while line = sock.gets
  puts line if is_body
  if line == "\r\n"
    is_body = true
  end
end