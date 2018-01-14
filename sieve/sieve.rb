
class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    range = (2..@limit).to_a
    (2..Math.sqrt(@limit)).each do |number|
      range.each do |prime_candidate|
        if prime_candidate % number == 0 && prime_candidate != number
          range.delete(prime_candidate)
        end
      end
    end
    range
  end
end

module BookKeeping

  VERSION = 1

end
