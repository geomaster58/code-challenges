def reverse arr
  #iterate through array
  #switch each element from the front to the back 
  newarr = []
  arr.each do |x|
   newarr.unshift(x)
  end
  arr = newarr   
end

class Array
  def quick_sort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quick_sort, pivot, *right.quick_sort
  end
end

def maximum arr
  arr.quick_sort.last
end

def minimum arr
  arr.quick_sort.first
end

arr = [1,2,3,4,5,6]

p reverse arr
p maximum arr
p minimum arr



