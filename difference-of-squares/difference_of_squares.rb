class Squares

  def initialize(top)
    @top = top
  end

  def square_of_sum
    (1..@top).sum ** 2
  end

  def sum_of_squares
    (1..@top).sum {|num| num ** 2}
  end

  def difference
    square_of_sum - sum_of_squares
  end
end


module BookKeeping
  VERSION = 4
end
