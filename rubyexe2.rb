require 'rspec'
# ¥
# £
# $


def currency_converter amount, location

  case location
   when 'US' then "$%.2f"%amount
   when 'UK' then  ("£%.2f"%amount).gsub('.',',') 
   when 'Japan' then "¥%.0f"%amount 
  end

end
describe 'Currency converter' do
  it 'can properly format currency for US, Japan, and UK' do
    expect(currency_converter 5000, 'US').to eq('$5000.00')
    expect(currency_converter 5000, 'Japan').to eq('¥5000')
    expect(currency_converter 5000, 'UK').to eq('£5000,00')
  end
end

puts "What country would you like to select? (UK, US, Japan)"
country = gets.chomp!
puts "What amount would you like to put in?"
amount = gets.chomp!
answer = currency_converter amount,country
puts "Here you go: #{answer}"