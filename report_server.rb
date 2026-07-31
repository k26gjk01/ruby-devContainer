require 'socket'
require 'prime'

def server s
  value = s.gets.split(" ")
  print value
  ans = primality_discrimination value[0]
  s.print "#{ans}\r\n"
  s.close
end

def primality_discrimination n
  Prime.prime?(n.to_i)
end

gs = TCPServer.open('localhost', 80)
loop do
  pp "start accept"
  s = gs.accept
  Thread.new do
    server s
  end
end