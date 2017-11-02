class Person
  include Comparable
  attr :str
 def <=>(other)
   str.size <=> other.str.size
 end 
end

class Baby < Person
end

babby = Baby.new("4")
person = Person.new("4")

p babby <=> person
p babby.methods.sort

babby.breathe

p Integer.ancestors
p String.ancestors
p Array.ancestors
p Hash.ancestors

