require "pry"

def recursive_countdown(attempt)
  return if attempt.zero?
  puts attempt
  recursive_countdown(attempt-1)
end

#recursive_countdown(10)

my_arr = (1..100).to_a

def sum_array(arr)
  total_sum = 0
  arr.each do |element|
    total_sum += element
  end
  total_sum
end

# p sum_array my_arr

def recursive_sum arr

  if arr.empty?
    0
  else
    head, *tail = arr
    head + recursive_sum(tail)
      
  end
 
end

# p recursive_sum my_arr

def factorial number
  if number == 0 || number == 1
    1
  else
    sum = 1
    number.times do |n|
      sum *= (n+1)
    end
    sum
  end   
end

# my_arr.each{|x| p factorial x}

def recursive_fac number
  number.zero?  ? 1 : number *= recursive_fac(number-1) 
end  

p recursive_fac(5)

