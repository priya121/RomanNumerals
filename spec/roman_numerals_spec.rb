def romanize(number)
  numerals = {1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X"}
    reversed_numerals_hash = numerals.to_a.reverse.to_h
     romanized = ""
      reversed_numerals_hash.each do |key,value|
        relevant_numeral = (number/key)
        relevant_numeral.times do |numeral|
          romanized << value
           number -= key
        end
      end
      romanized
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
  it 'takes 17 and returns XVII' do
    expect(romanize(17)).to eq("XVII")
  end
end

