def bubble_sort array
  n = array.length

  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

a = [1,2,3,6,2,8,5,4,1,0,7]

p bubble_sort a

def quick_sort
  
end