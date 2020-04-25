class Clock
  HOURS_IN_A_DAY = 24
  MINUTES_IN_A_HOUR = 60
  FORMAT = '%.2d'

  attr_reader :hour
  attr_reader :minute

  def initialize(hour: 0, minute: 0)
    @hour = compute_hour(hour, minute)
    @minute = compute_minute(minute)
  end

  def to_s(h = hour, m = minute)
    "#{with_leading_zeroes(h)}:#{with_leading_zeroes(m)}"
  end

  def +(other)
    Clock.new(hour: hour + other.hour, minute: minute + other.minute)
  end

  def -(other)
    Clock.new(hour: hour - other.hour, minute: minute - other.minute)
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end

  private

  def compute_hour(hour, minute)
    (hour + (minute / MINUTES_IN_A_HOUR)) % HOURS_IN_A_DAY
  end

  def compute_minute(minute)
    minute % MINUTES_IN_A_HOUR
  end

  def with_leading_zeroes(number)
    format(FORMAT, number)
  end
end
