searcharr = [1,4,3,2,5,7]
searchanser = []
puts "Please enter a positon"
answer = gets.chomp!
number = searcharr[answer.to_i]
relativeans = 0
# searcharr.each do |x|
#   if x > answer.to_i
#     searchanser << x
#   elsif x == searcharr.max
#     searchanser << x  
#   end
# end
searcharr.each_with_index  do |element, index|
   next_element = elements[index+1]
   do_something if next_element > 
   

end
# while answer.to_i <= relativeans
#   relativeans = searcharr[answer.to_i].next
#   p relativeans
# end

p searchanser.min
p number
p relativeans