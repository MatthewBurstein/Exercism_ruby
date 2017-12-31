class Complement
  def self.of_dna(dna)
    dna.chars.map! do |letter|
      case letter
        when "G"
          "C"
        when "C"
          "G"
        when "T"
          "A"
        when "A"
          "U"
        else
          return "" #return empty string if any character is invalid
      end
    end.join
  end
end

module BookKeeping
  VERSION = 4
end
