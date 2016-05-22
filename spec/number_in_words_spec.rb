require 'spec_helper'
require 'number_in_words'

describe Number, '#in_words' do
    {
      "0"   => "zero",
      "1"   => "one",
      "3"   => "three",
      "-3"  => "minus three",
      "6"   => "six",
      "10"  => "ten",
      "11"  => "eleven",
      "-11" => "minus eleven",
      "14"  => "fourteen",
      "19"  => "nineteen",
      "20"  => "twenty",
      "21"  => "twenty-one",
      "-21" => "minus twenty-one",
      "42"  => "fourty-two",
      "99"  => "ninety-nine",
      "100" => "one hundred",
      "150" => "one hundred and fifty",
      "200" => "two hundred",
      "222" => "two hundred and twenty-two",
      "155" => "one hundred and fifty-five",
      "555" => "five hundred and fifty-five",
      "-555"=> "minus five hundred and fifty-five",
      "5555" => "five thousand five hundred and fifty-five",
      "5055" => "five thousand fifty-five",
      "5005" => "five thousand five",
      "5500" => "five thousand five hundred",
      "5000" => "five thousand",
      "500000" => "five hundred thousand",
      "500050" => "five hundred thousand fifty",
      "500500" => "five hundred thousand five hundred",
      "500505" => "five hundred thousand five hundred and five",
      "5000000" => "five million",
      "50000000" => "fifty million",
      "500000000" => "five hundred million",
      "5000000000" => "five billion",
      "50000000000" => "fifty billion",
      "500000000000" => "five hundred billion",
      "5000000000000" => "five trillion",
      "5000000000000000" => "five quadrillion",
      "500000000000000000" => "five hundred quadrillion",
    }.each do |input, result|
      it "converts numbers to words" do
        number = Number.new(input)
        expect(number.in_words).to eq result
      end
    end
end
