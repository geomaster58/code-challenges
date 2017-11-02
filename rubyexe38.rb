class Array
  def remove_duplicates
    arr =[]
    self.each {|x| arr << x unless arr.include?(x)}
    arr
  end

  def remove_more_duplicates
    self.each_with_object([]) do |e, arr|
      arr << e unless arr.include?(e)        
    end
  end
end

p [1,3,2,1,4,5,2,6,4,3,2,5,7,8,10,2,1,4,5,6,7,3,2,0].remove_duplicates
p [1,3,2,1,4,5,2,6,4,3,2,5,7,8,10,2,1,4,5,6,7,3,2,0].remove_more_duplicates