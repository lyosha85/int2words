class NumberInWords
  ZEROTOTWENTY = %w[zero one two three four five six seven eight nine ten
                      eleven twelve thirteen fourteen fifteen sixteen seventeen
                      eighteen nineteen twenty]
  def convert(number)
    number = Integer(number)
    case number
      when 0..20
        ZEROTOTWENTY[number]
      else
        "hai"
    end
  end
end
