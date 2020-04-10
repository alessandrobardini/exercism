ALPHABET_CHARS = 'abcdefghijklmnopqrstuvwxyz'.chars

class Isogram
  def self.isogram?(input)
    new(input).isogram?
  end

  private

  def initialize(input)
    @input = input.downcase.chars
    @histogram = Hash.new(0)
  end

  attr_reader :input
  attr_reader :histogram

  def letter?(char)
    ALPHABET_CHARS.include?(char)
  end

  def repetead?(letter)
    (histogram[letter] += 1) > 1
  end

  public

  def isogram?
    input.none? { |char| letter?(char) && repetead?(char) }
  end
end
