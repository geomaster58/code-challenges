a = [1,2,3,6,2,8,5,4,1,0,7]

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

class Array
  def quick_sort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quick_sort, pivot, *right.quick_sort
  end
end

def merge_sort (list)
    if list.length <= 1
      list
    else
      mid = (list.length / 2).floor
      left = merge_sort(list[0..mid - 1])
      right = merge_sort(list[mid..list.length])
      merge(left, right)
    end 
  end

  def merge left, right
    if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
      
          
  end

p a.quick_sort
p merge_sort a
p bubble_sort a