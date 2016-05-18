require 'spec_helper'
require 'number_in_words'

describe Number, '#in_words' do
    {
      "1"   => "one",
      "3"   => "three",
      "6"   => "six",
      "10"   => "ten",
      "11"  => "eleven",
      "14"  => "fourteen",
      "19"  => "nineteen",
      "100" => "one hundred",
    }.each do |input, result|
      it "converts numbers to words" do
        number = Number.new(input)
        expect(number.in_words).to eq result
      end
    end
end
