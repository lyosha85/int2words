class Number
  ONETEENS = %w[one two three four five six seven eight nine ten eleven twelve
                thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
  TENS = %w[twenty thirty fourty fifty sixty seventy eighty ninety]
  THOUS = %w[thousand million billion trillion quadrillion]

  def initialize(number)
    @number = Integer(number)
  end

  def in_words
    return 'zero' if @number == 0
    @number, sign = check_sign(@number)
    exponet = 1000
    result = ""
    while (exponet != 10)
      whole, remainder = @number.divmod(exponet)
      result << "#{NDIC[whole]} #{NDIC[exponet]} "
      @number -= whole * exponet
      exponet = exponet / 10
    end
    whole, remainder = @number.divmod(10)
    if @number > 20
      result << "#{NDIC[whole*10]}#{NDIC[whole]} "
    end
  end


  def check_sign(number)
    return number < 0 ? ([number.abs, 'minus ']) : ([number, ''])
  end

end
