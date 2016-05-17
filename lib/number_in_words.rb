class NumberInWords
  #TODO: thirteen fourteen .. nineteen twenty can be further optimized
  ZEROTOTWENTY = %w[zero one two three four five six seven eight nine ten
                      eleven twelve thirteen fourteen fifteen sixteen seventeen
                      eighteen nineteen twenty]

  #TODO: thirteen fourteen .. nineteen can be further optimized
  MULTIPLIERS = {
          1000 => "thousand",
          100 => "hundred",
          90 => "ninety",
          80 => "eighty",
          70 => "seventy",
          60 => "sixty",
          50 => "fifty",
          40 => "forty",
          30 => "thirty",
  }
  def convert(number)
    number = Integer(number)
    buffer = ""
    case number
      when 0..20
        return ZEROTOTWENTY[number]
      else
      #TODO: Convert to recursive function.
        "hai"
    end
  end
end
