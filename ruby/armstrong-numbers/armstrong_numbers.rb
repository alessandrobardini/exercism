class ArmstrongNumbers
  def self.include?(number)
    digits = number.to_s.chars.map(&:to_i)
    number == digits.sum { |digit| digit**digits.size }
  end
end
