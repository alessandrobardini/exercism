ALL_POSSIBLE_NAMES = ('AA000'..'ZZ999').to_a.shuffle

class Robot
  @@robot_names = ALL_POSSIBLE_NAMES.clone.shuffle

  def self.forget
    @@robot_names = ALL_POSSIBLE_NAMES.clone.shuffle
  end

  def initialize
    @name = @@robot_names.pop
  end

  attr_reader :name

  def reset
    @@robot_names.unshift(@name)
    @name = @@robot_names.pop
  end
end
