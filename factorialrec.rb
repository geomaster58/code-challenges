def factorial num
  return 1 if num == 1
  num * factorial(num-1)
end

print factorial 6