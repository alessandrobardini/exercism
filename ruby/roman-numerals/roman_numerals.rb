class Integer
  ROMAN_SYMBOLS = {
    units: {
      sign_for_one: 'I',
      sign_for_five: 'V',
      sign_for_ten: 'X'
    },
    tenths: {
      sign_for_one: 'X',
      sign_for_five: 'L',
      sign_for_ten: 'C'
    },
    hundreds: {
      sign_for_one: 'C',
      sign_for_five: 'D',
      sign_for_ten: 'M'
    },
    thousands: {
      sign_for_one: 'M'
    }
  }

  def to_roman
    thousands, hundreds, tenths, units = split_number

    "#{magnitude_order_to_roman(thousands, :thousands)}" \
    "#{magnitude_order_to_roman(hundreds, :hundreds)}" \
    "#{magnitude_order_to_roman(tenths, :tenths)}" \
    "#{magnitude_order_to_roman(units, :units)}"
  end

  private

  def split_number
    (0..3).each_with_object([]) do |index, splitted_number|
      splitted_number << self / 10**(3 - index) % 10
    end
  end

  def magnitude_order_to_roman(number, magnitude_order)
    sign_for_one = ROMAN_SYMBOLS[magnitude_order][:sign_for_one]
    sign_for_five = ROMAN_SYMBOLS[magnitude_order][:sign_for_five]
    sign_for_ten = ROMAN_SYMBOLS[magnitude_order][:sign_for_ten]

    return "#{sign_for_one}#{sign_for_ten}" if number == 9
    return "#{sign_for_five}#{sign_for_one * (number - 5)}" if number < 9 && number > 5
    return sign_for_five if number == 5
    return "#{sign_for_one}#{sign_for_five}" if number == 4
    sign_for_one * number
  end
end
