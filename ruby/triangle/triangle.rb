class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides.sort
  end

  def equilateral?
    sides[0] >= 0 && sides[0] + sides[1] > sides[2] && sides.uniq.length == 1
  end

  def isosceles?
    sides[0] >= 0 && sides[0] + sides[1] > sides[2] && sides.uniq.length <= 2
  end

  def scalene?
    sides[0] >= 0 && sides[0] + sides[1] > sides[2] && sides.uniq.length == 3
  end
end
