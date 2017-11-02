require 'rubygems'
require 'decisiontree'

attributes =['Temp']
training = [
[98.7, "healthy"],
[99.1, "healthy"],
[100.5, "sick"],
[102.5, "crazy sick"],
[107.5, "pretty much dead"]

]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
dec_tree.train


test = [54]

decision = dec_tree.predict(test)
puts "Prediction: #{decision}"
puts "Reality: #{test.last}"