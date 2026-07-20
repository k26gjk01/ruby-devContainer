require 'socket'

def server s
  name = s.gets
  pp name
  s.print "Hello,#{name}"
  s.close
end

gs = TCPServer.open('localhost', 80)
loop do
  pp "start accept"
  s = gs.accept
  Thread.new do
    server s
  end
end