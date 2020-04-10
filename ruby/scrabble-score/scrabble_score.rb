REGEXP = {
  LETTERS: /\p{L}/
}

TILES = {
  'A' => 1,
  'B' => 3,
  'C' => 3,
  'D' => 2,
  'E' => 1,
  'F' => 4,
  'G' => 2,
  'H' => 4,
  'I' => 1,
  'J' => 8,
  'K' => 5,
  'L' => 1,
  'M' => 3,
  'N' => 1,
  'O' => 1,
  'P' => 3,
  'Q' => 10,
  'R' => 1,
  'S' => 1,
  'T' => 1,
  'U' => 1,
  'V' => 4,
  'W' => 4,
  'X' => 8,
  'Y' => 4,
  'Z' => 10
}

class Scrabble
  def self.score(word)
    new(word).score
  end

  private

  def initialize(word, tiles = TILES)
    @letters = word.to_s.upcase.scan(REGEXP[:LETTERS])
    @tiles = tiles.transform_keys(&:to_s)
  end

  attr_reader :letters
  attr_reader :tiles

  public

  def score
    letters.sum { |letter| tiles[letter] }
  end
end
