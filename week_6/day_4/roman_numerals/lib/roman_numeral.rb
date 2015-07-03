class RomanNumeral

  NUMERALS = {
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  def convert(number)
    numeral = ''
    NUMERALS.each do |key, value|
      (number / key).times { numeral << value; number = number - key }
    end
    numeral
  end
    # # below is a guard statement, meaning if this passes it won't continue to run the rest of the code
    # return 'X' if number == 10
    # return 'V' if number == 5
    # 'I' * number
end