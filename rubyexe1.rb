require 'rspec'
def sentence_reverser str

  str.split.reverse.join(' ')


end

puts "What sentence would you like to reverse?"
answer = gets.chomp!
p sentence_reverser answer

describe "Sentence reverser" do
  it 'reverses the words in a sentence' do
    test_sentence = "backwards am I"
    expect(sentence_reverser(test_sentence)).to eq('I am backwards')
  end
end

