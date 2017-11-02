require 'rspec'

def fraction_calculator fraction_one, fraction_two, operator
  case operator
  when "+","add","combine"   
    num = fraction_one.to_r+fraction_two.to_r
    p num.to_s
  when "-","subtract"  
    num = fraction_one.to_r-fraction_two.to_r
    p num.to_s 
  when "*","multiply","times"   
    num = fraction_one.to_r*fraction_two.to_r
    p num.to_s
  when "/","divide","division" 
    num = fraction_one.to_r/fraction_two.to_r
    p num.to_s
  when "%","modulus"   
    num = fraction_one.to_r%fraction_two.to_r
    p num.to_s
  when "**","^","exponent"  
    num = fraction_one.to_r**fraction_two.to_r
    p num.to_s  
  else 
    p "operation not found!!"
  end
end

fraction_calculator "1/100000", "156/67872", "combine"


describe 'Fraction multiplication' do
  it 'can multiply two fractions and output the value in a string based fraction format' do
    expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
  end
end
