#! /usr/local/bin/ruby
# server1.rb

require 'socket'

def server s
<<<<<<< Updated upstream
  cmd, path, ver = s.gets.split " "
  # 1行目 HTTP/1.0 200 OK
  # 2行目 Content-Type: text/html
  # 3行目 空行
  # 4行目 コンテンツ
  # 最後 ソケットをクローズ
  if path == "/"
    s.print "HTTP/1.0 200 OK\r\n"
    s.print "Content-Type: text/html\r\n"
    s.print "\r\n"
    pp "INDEX"
    s.puts "<h1>index</h1>"
  else
    pp "OTHER"
    s.puts "other"
=======
  cmd,path,ver = s.gets.split " "
  pp [cmd,path,ver]
  s.puts cmd
  while line = s.gets
    pp line
    s.puts line
    break if line == "\r\n"
>>>>>>> Stashed changes
  end
  s.close
end

gs = TCPServer.open 'http'

loop do
  pp "start accept"
  s = gs.accept
  Thread.new do
    server s
    sleep 10
  end
end


