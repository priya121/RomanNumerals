def romanize(number)
  numeral_one = "I"
  numeral_five = "V"
  numeral_ten = "X"
  if number <= 3
    numeral_one*number
  elsif number == 4
    numeral_one + numeral_five
  elsif number.between?(5,8)
    remainder =  number%5 
    numeral_five + numeral_one*(remainder) 
  elsif number.between?(9,10)
    if number == 9
      numeral_one + numeral_ten
    elsif number == 10 
      numeral_ten
    end
  end
end

describe 'roman numerals - numerize -' do
  it 'takes 1 and returns I' do 
    expect(romanize(1)).to eq("I") 
  end
  it 'takes 2 and returns II' do 
    expect(romanize(2)).to eq("II")
  end
  it 'takes 3 and returns III' do 
    expect(romanize(3)).to eq("III")
  end
  it 'takes 4 and returns IV' do 
    expect(romanize(4)).to eq("IV")
  end
  it 'takes 5 and returns V' do
    expect(romanize(5)).to eq("V")
  end
  it 'takes 6 and returns VI' do
    expect(romanize(6)).to eq("VI")
  end
  it 'takes 7 and returns VII' do 
    expect(romanize(7)).to eq("VII")
  end
  it 'takes 8 and returns VIII' do
    expect(romanize(8)).to eq("VIII")
  end
  it 'takes 9 and returns IX' do
    expect(romanize(9)).to eq("IX")
  end
  it 'takes 10 and returns X' do 
    expect(romanize(10)).to eq("X")
  end
end

