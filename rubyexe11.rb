require 'rspec'

def random_numbers x, y


arr = Array.new(x) {rand(y)} 

p arr
  
end

puts "How many items did you want?"

length = gets.chomp!.to_i


puts "How high did you want it to go?"

range = gets.chomp!.to_i

random_numbers length, range

describe 'Random number collection generator' do
  it 'creates a collection of random numbers ranging from 0 to 999' do
    # Not a perfect test since there is a slight chance for duplicate
    # Arrays to be created
    random_set_one = random_numbers
    random_set_two = random_numbers
    expect(random_numbers.count).to eq(20)
    expect(random_set_one).to_not eq(random_set_two)
  end
end