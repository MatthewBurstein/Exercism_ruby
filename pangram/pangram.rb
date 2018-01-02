class Pangram

  ALPHABET = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

  def self.pangram?(string)
    characters = string.downcase.chars.uniq
    ALPHABET.all?{ |letter| characters.include?(letter) }
  end

end


module BookKeeping
  VERSION = 6
end
