require 'socket'
require 'prime'

def server s
  value = s.gets.split(" ")
  print value
  if value.length == 1
    ans = primality_discrimination value[0]
  elsif value.length == 2
    ans = primality_search value[0].to_i,value[1].to_i
  else
    ans = "error"
  end
  s.print "#{ans}\r\n"
  s.close
end

def primality_discrimination n
  Prime.prime?(n.to_i)
end

def primality_search n,m
  ans = ''
  for num in n..m do
    ans = ans+"#{num} " if Prime.prime?(num)
  end
  ans
end

gs = TCPServer.open('localhost', 80)
loop do
  pp "start accept"
  s = gs.accept
  Thread.new do
    server s
  end
end