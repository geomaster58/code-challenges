x = [34,90,56,21,23,67]
y = Array.new
y[0] = 534
p y
y[10] = 434343
p y
y.each do |i|
  puts i
end
x.delete(90)
p x
x.delete_if {|x| x < 35 }
p x
x.delete_at(56)
x.push("skjfks","sdjfsjk")
p x
x.pop()
p x
people = {me: 19, brad: 4000, georgio: 28 }
people.delete (:georgio)
p people
people.each_key {|x| puts x}
people.each_value {|x| puts x}
people[:genivive] = 45
p people
people2 = people.invert
p people2
people = people.merge(people2)
p people
p people.to_a
p people.values
p people.keys










