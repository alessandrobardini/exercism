class PhoneNumber
  def self.clean(number)
    new(number).valid?
  end

  private

  def initialize(number)
    number = number.delete('^0-9')
    @number = has_country_code?(number) ? number_without_country_code(number) : number
  end

  def has_country_code?(number)
    number.size == 11 && valid_country?(number)
  end

  def valid_country?(number)
    number[0] == '1'
  end

  def number_without_country_code(number)
    number[1..-1]
  end

  attr_reader :number

  def valid_exchange_code?
    number[0] > '1'
  end

  def valid_subscriber_number?
    number[3] > '1'
  end

  public

  def valid?
    number.size == 10 && valid_exchange_code? && valid_subscriber_number? ? number: nil
  end
end
