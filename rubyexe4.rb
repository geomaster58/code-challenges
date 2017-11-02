require 'rspec'



puts "Please enter a palindrome."
answer = gets.chomp!



def palindrome? answers

answers = answers.downcase

return answers === answers.reverse

end



describe 'Check if a word is a palindrome' do
  it 'returns true if the word is a palindrome, false if not' do
    expect(palindrome?('tacocat')).to be(true)
    expect(palindrome?('Tacocat')).to be(true)
    expect(palindrome?('baseball')).to be(false)
  end
end

