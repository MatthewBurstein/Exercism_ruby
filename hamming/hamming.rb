class Hamming

  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length
    counter = 0
    strand1.chars.zip(strand2.chars) {|pair| counter += 1 if pair[0] != pair[1]}
    counter
  end

end

module BookKeeping

  VERSION = 3

end
