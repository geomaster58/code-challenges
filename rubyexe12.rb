 i = 1

 while i < 10
  puts "Hi"
  i += 1
end

arr = Array.new(5) {rand(1000000000)}

arr.each do |i|
  p i
end

