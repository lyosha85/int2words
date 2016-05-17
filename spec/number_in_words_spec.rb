require 'spec_helper'
require 'number_in_words'

describe NumberInWords, '#convert' do
  subject(:number_in_words) { NumberInWords.new }
  it "converts" do
    {
      "1"   => "one",
      "3"   => "three",
      "6"   => "six",
      "10"   => "ten",
      "11"  => "eleven",
      "100" => "one hundred",
    }.each do |input, result|
      expect(number_in_words.convert input).to eq result
    end
  end
end