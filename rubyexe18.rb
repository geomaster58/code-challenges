class Array
 
  def bubble_sort
    n = self.length

    loop do 
      swapped = false

      (n-1).times do |i|
          if self[i] > self[i+1]
            self[i], self[i+1] = self[i+1], self[i]  
            swapped = true
          end 
       end 

    break if not swapped
  end
    self


  end
end

class String

  def reverse
    puts "hahahhaahaha"
  end 

  def coolio
    puts "thats cool!!"
  end 

end

"dfsfs".reverse
"sadsda".coolio
p [5,90,43,2,45,89435,384,7,6,12,].bubble_sort


