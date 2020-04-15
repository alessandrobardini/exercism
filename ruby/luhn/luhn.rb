REGEXP = {
  WHITESPACES: /\s/,
  NON_DIGITS: /\D/
}

class Luhn
  def self.valid?(input)
    new(input).valid?
  end

  private

  def initialize(input)
    @input = input.gsub(REGEXP[:WHITESPACES], '')
  end

  attr_reader :input

  def input_is_valid?
    input.size > 1 && input.scan(REGEXP[:NON_DIGITS]).empty?
  end

  def luhn?
    (luhn_sum % 10).zero?
  end

  def luhn_sum
    input.reverse.chars.map(&:to_i).each_with_index.sum do |(digit, index)|
      luhn_digit(digit, index)
    end
  end

  def luhn_digit(digit, index)
    if index.odd?
      digit *= 2
      digit -= 9 if digit > 9
    end
    digit
  end

  public

  def valid?
    input_is_valid? && luhn?
  end
end
