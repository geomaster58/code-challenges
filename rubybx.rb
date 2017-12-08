
def boxer str
  word_arr = str.split(" ")
  max_length = word_arr.max_by(&:length).length
  
  puts "*" + ("*"*max_length) + "*"
  
  word_arr.each do |x|

    if x.length == max_length
      puts "*" + x + "*"
    else   
      diff = max_length - x.length
      diff_half = diff/2
      puts "*" + (" "*(diff/2)) + x + (" "*(diff/2)) + "*" unless diff.odd?
      puts "*" + (" "*(diff_half)) + x + (" "*(diff-diff_half)) + "*" if diff.odd?
    end  

  end

  puts "*" + ("*"*max_length) + "*"
   
end

puts "What string would you like to box?"
answer = gets.chomp!
boxer answer