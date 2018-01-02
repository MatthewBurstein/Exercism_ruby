class Pangram

  ALPHABET = ('a'..'z')

  def self.pangram?(string)
    characters = string.downcase.chars.uniq
    ('a'..'z').all? { |letter| characters.include?(letter) }
  end

end


module BookKeeping
  VERSION = 6
end
