require 'numbers_dictionary'

class Number
  def initialize(number)
    @number = Integer(number)
  end

  def in_words
    @number, sign = check_sign(@number)
    case @number
      when 0..20
        return "#{sign}#{NUMBERS_DICTIONARY[@number]}"
      else
        puts 'hai'
    end
  end

  def check_sign(number)
    return number < 0 ? ([number.abs, 'minus ']) : ([number, ''])
  end

end
