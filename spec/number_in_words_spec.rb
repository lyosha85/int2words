require 'spec_helper'
require 'number_in_words'

describe Number, '#in_words' do
    {
      "0"   => "zero",
      "1"   => "one",
      "3"   => "three",
      "-3"   => "minus three",
      "6"   => "six",
      "10"   => "ten",
      "11"  => "eleven",
      "-11"  => "minus eleven",
      "14"  => "fourteen",
      "19"  => "nineteen",
      "-21"  => "minus twenty one",
      "42"  => "fourty two",
      "99"  => "ninety nine",
      "100" => "one hundred",
      "200" => "two hundred",
      "222" => "two hundred twenty two",
      "155" => "one hundred fifty-five",
      "555" => "five hundred fifty-five",
    }.each do |input, result|
      it "converts numbers to words" do
        number = Number.new(input)
        expect(number.in_words).to eq result
      end
    end
end
