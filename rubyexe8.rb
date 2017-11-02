require 'rspec'
require 'benchmark'

arr = Array.new(100000000000000) {rand 10000000000}


def new_max array_of_elements
 
  new_array = array_of_elements.sort.last
  
  p new_array

end

def better array
  new_array = 0
  array.each do |i|
    if i > new_array
      new_array = i
    end
  end
p new_array
end  

Benchmark.bm(10) do |x|
  x.report('Sorted: ') {new_max arr}
  x.report('Each: ') {better arr}

end

describe 'New Max method' do
  it 'returns the max value from an array efficiently' do
    test_array = [2, 4, 10, 3, 1]
    expect(new_max(test_array)).to eq(10)
  end
end