class SpaceAge
  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    seconds(1)
  end

  def on_mercury
    seconds(0.2408467)
  end

  def on_venus
    seconds(0.61519726)
  end

  def on_jupiter
    seconds(11.862615)
  end

  def on_mars
    seconds(1.8808158)
  end

  def on_saturn
    seconds(29.447498)
  end

  def on_uranus
    seconds(84.016846)
  end

  def on_neptune
    seconds(164.79132)
  end

  def seconds(weight)
    (@seconds / (31_557_600.0 * weight)).round(2)
  end
end
