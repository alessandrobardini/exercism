class Raindrops
  RULES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(integer)
    new(integer).to_s
  end

  private

  def initialize(drip, rules = RULES)
    @drip = drip
    @rules = rules
  end

  attr_reader :drip
  attr_reader :rules

  def filter
    rules.each_with_object(noise = '') do |(factor, note)|
      noise << note if drip.nonzero? && (drip % factor).zero?
    end
  end

  def sound
    sound = filter
    sound.empty? ? drip : sound
  end

  public

  def to_s
    @to_s ||= sound.to_s
  end
end
