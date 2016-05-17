class NumberInWords
  ZEROTOTEN = %w[zero one two three four five six seven eight nine ten]
  def convert(number)
    number = Integer(number)
    ZEROTOTEN[number]
  end
end
