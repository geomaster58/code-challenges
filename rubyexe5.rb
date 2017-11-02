
puts "Name an animal!"

answer = gets.chomp!

puts "Name a noun!"

noun = gets.chomp!

p "The quick brown #{answer} jumped over the lazy #{noun}."

p  "AwOrD".swapcase.reverse

str = "    The quick brown fox jumps over the quick dog.       "

p str.gsub "quick", "slow"

p str

p str.gsub! "quick","slow"

p str 

p str.strip

p str.split(//).length