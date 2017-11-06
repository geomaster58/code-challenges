puts "What file would you like to read?"
response = gets.chomp!
File.open(response, "r"){|file| file.each_line {|line| puts line; sleep(0.2)}}