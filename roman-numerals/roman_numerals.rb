class Integer

  VALUES = {
    ones: ["I","X","C","M"],
    fives: ["V","L","D"]
  }

  def to_roman
    output = ""
    digits = self.to_s
    (0..digits.length - 1).each do |position|
      output << digits[position].to_i.digit_calculation(digits.length - 1 - position)
    end
    output
  end

  def digit_calculation(position)
    digit = ""
    case
    when self <= 3
      digit << VALUES[:ones][position] * self
    when self <= 4
      digit << VALUES[:ones][position] + VALUES[:fives][position]
    when self <= 5
      digit << VALUES[:fives][position]
    when self <= 8
      digit << VALUES[:fives][position]+ VALUES[:ones][position] * (self - 5)
    when self == 9
      digit << VALUES[:ones][position] + VALUES[:ones][position + 1]
    end
    digit
  end

end


module BookKeeping
  VERSION = 2
end
