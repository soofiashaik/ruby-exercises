require 'rspec'
require_relative 'to_roman'

describe 'given an arabic numeral' do

  it 'should convert arabic to roman numerals' do
    [[1, "I"], [2, "II"], [3, "III"], [4, "IV"],
     [9, "IX"], [15, "XV"], [42, "XLII"], [98, "XCVIII"],
     [112, "CXII"], [527, "DXXVII"], [956, "CMLVI"], [1000, "M"]
    ].each do |numeral_value|
      numerals = ArabicToRoman.new()
      puts "#{numeral_value[0]} should return #{numeral_value[1]}"
      expect(numerals.convert_to_roman(numeral_value[0])).to eq (numeral_value[1])
    end
  end
end