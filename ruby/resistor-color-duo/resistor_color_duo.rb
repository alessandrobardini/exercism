class ResistorColorDuo
  VALUES = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.value(resistors)
    resistors.take(2).map { |resistor| VALUES.index(resistor) }.join.to_i
  end
end
