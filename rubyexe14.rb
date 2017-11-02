for i in 0..42
  p i
end

arr = Array.new(23){rand 200}

p arr

arr2 = arr.select(&:even?)

p arr2

arr3 = %w(this is a cool sentence real cool dontcha know)

p arr3.select {|x| x.length <= 1}

arr4 = %w(a b c d e f g)

p arr4.select {|v| v =~ /[aeiou]/}

p arr3.select {|v| v =~ /[cool]/}



