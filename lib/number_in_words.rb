class Number
  ONETEENS = %w[one two three four five six seven eight nine ten eleven twelve
                thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
  TENS     = %w[twenty thirty fourty fifty sixty seventy eighty ninety]
  THOUS    = %w[thousand million billion trillion quadrillion]

  def initialize(number)
    @sign = check_sign(Integer(number))
    @number = Integer(number).abs
    @output = ''
  end

  def in_words
    return 'zero' if @number.zero?

    thousands = Integer(Math.log10(@number) / 3)
    magnitude = Integer(10**(3 * thousands))

    loop do
      div = Integer(@number / magnitude)
      wordify(div)
      break if thousands.zero?
      @output << THOUS[thousands - 1]
      @number -= div * magnitude
      break if @number.zero?
      @output << ' '
      magnitude /= 1000
      thousands -= 1
    end
    @sign + @output.strip
  end

  private

  def wordify(num)
    if num >= 100
      div = num / 100
      @output << ONETEENS[div - 1] << " hundred "
      num -= div * 100
      @output << "and " unless num.zero?
    end
    if num >= 20
      div = num / 10
      @output << TENS[div - 2]
      num -= div * 10
      if (!num.zero?)
        @output << '-'
      else
        @output << ' '
      end
    end
    @output << "#{ONETEENS[num - 1]} " unless num.zero?
  end

  def check_sign(number)
    number < 0 ? 'minus ' : ''
  end
end
