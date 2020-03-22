class Hamming
  def self.compute(strand1, strand2)
    new(strand1, strand2).distance
  end

  def initialize(strand1, strand2)
    raise StrandLengthError unless strand1.size == strand2.size
    @nucleotides = strand1.chars.zip(strand2.chars)
  end

  attr_reader :nucleotides

  def distance
    nucleotides.count { |n1, n2| n1 != n2 }
  end
end

class StrandLengthError < ArgumentError
  def initialize(msg = 'Strand lengths must be identical')
    super
  end
end
