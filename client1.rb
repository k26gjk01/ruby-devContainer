#!/usr/local/bin/ruby
#client1.rb
require 'socket'

#host = 'www.is.kyusan-u.ac.jp'
host = ARGV[0]
port = 'http'
#path = '/~toshi/'
path = '/'
if ARGV[1] != nil
  path = ARGV[1]
end
version = 'HTTP/1.1'

sock = TCPSocket.new host, port
#cmd = 'GET ' + path + ' ' + version + "\r\n" + 'Host: ' + host + "\r\n\r\n"
cmd = "GET #{path} #{version}\r\n"
cmd += "Host: #{host}\r\n"
cmd += "Connection: close\r\n\r\n"

pp cmd
sock.print cmd

is_body = false
while line = sock.gets
  puts line if is_body
  if line == "\r\n"
    is_body = true
  end
end