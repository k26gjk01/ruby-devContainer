
f = File.open"reader.rb", "r"
line = f.gets
puts line

while line = f.gets
  puts line
end

f.close

