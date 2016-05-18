require 'numbers_dictionary'

class Number
  def initialize(number)
    @number = Integer(number)
  end

  def in_words
    @number, sign = check_sign(@number)
    answer = ""
    case @number
      when 0
        return 'zero'
      when @number.to_s[-2..-1].to_i < 20 
        answer.prepend "#{NUMBERS_DICTIONARY[@number]}"
      when 20..99
        tens, remainder = @number.divmod(10)
        answer.prepend "#{NUMBERS_DICTIONARY[tens*10]} #{NUMBERS_DICTIONARY[remainder]}"
      when 100..999
        hundreds, remainder = @number.divmod(100)
        answer.prepend "#{NUMBERS_DICTIONARY[hundreds]} #{NUMBERS_DICTIONARY[100]}"
      else
        puts 'hai'
    end
    return answer.prepend sign
  end

  def check_sign(number)
    return number < 0 ? ([number.abs, 'minus ']) : ([number, ''])
  end

end
