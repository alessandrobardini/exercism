class Squares
  attr_reader :last_number

  def initialize(last_number)
    @last_number = last_number
  end

  def square_of_sum
    (1..last_number).sum**2
  end

  def sum_of_squares
    (1..last_number).map { |number| number**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
