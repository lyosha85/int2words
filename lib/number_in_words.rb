require 'numbers_dictionary'

class Number
  def initialize(number)
    @number = Integer(number)
  end

  def in_words
    case @number
      when 0..20
        return NUMBERS_DICTIONARY[number]
      else
        puts 'hai'
    end
  end
end
