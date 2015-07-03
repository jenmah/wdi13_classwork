require_relative '../lib/roman_numeral'

describe RomanNumeral do
    
  # this just means that everytime we have an instance of roman, create a RomanNumeral.new, allowing us to dry up our code
  let(:roman) { RomanNumeral.new }

  it 'converts the number 1 to the numeral I' do
    expect(roman.convert(1)).to eq 'I'
  end

  it 'converts the number 2 to the numeral II' do
    expect(roman.convert(2)).to eq 'II'
  end

  it 'converts the number 4 to the numeral IV' do
    expect(roman.convert(4)).to eq 'IV'
  end

  it 'converts the number 5 to the numeral V' do
    expect(roman.convert(5)).to eq 'V'
  end

  it 'converts the number 9 to the numeral IX' do
    expect(roman.convert(9)).to eq 'IX'
  end

  it 'converts the number 10 to the numeral X' do
    expect(roman.convert(10)).to eq 'X'
  end

  it 'converts the number 25 to the numeral XXV' do
    expect(roman.convert(25)).to eq 'XXV'
  end

  it 'converts the number 44 to the numeral XLIV' do
    expect(roman.convert(44)).to eq 'XLIV'
  end

  it 'converts the number 63 to the numeral LXIII' do
    expect(roman.convert(63)).to eq 'LXIII'
  end

  it 'converts the number 99 to the numeral XCIX' do
    expect(roman.convert(99)).to eq 'XCIX'
  end

  it 'converts the number 127 to the numeral CXXVII' do
    expect(roman.convert(127)).to eq 'CXXVII'
  end

end