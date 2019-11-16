class Grains
  TOTAL_NUMBER_OF_SQUARES = 64
  def self.square(square)
    raise ArgumentError if square <= 0 || square > 64
    2**(square - 1)
  end

  def self.total
    2**TOTAL_NUMBER_OF_SQUARES - 1
  end
end
