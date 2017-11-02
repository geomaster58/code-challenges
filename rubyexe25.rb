require 'rspec'

def increment_value str
  sequence = (str.split("") << str.split("").last.next).join
end

increment_value 'abc'

describe 'Increment string value sequence' do
  it 'appends the next item in the sequence of a string' do
    expect(increment_value 'abcde').to eq('abcdef')
    expect(increment_value '123').to eq('1234')
   end
end