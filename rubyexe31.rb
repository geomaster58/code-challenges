require 'rspec'

# def big_data_parser num
#   num2 = (1..num).take(5)
#   num2.map { |x| x**2  }

# end

def big_data_parser num
  (1..num).lazy.map do |i|
    i**2
  end.first(5)
end

p big_data_parser 100000000000000000000000000000000

describe 'Big Data' do
  it 'can take a large value as an input and not timeout' do
    expect(big_data_parser 1_000_000_000_000_000_000). to eq([1, 4, 9, 16, 25])
  end
end