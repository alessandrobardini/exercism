class Year 
  def self.leap?(year)
    return true if (year % 400).zero?
    return true if (year % 4).zero? and not (year % 100).zero?
    return false
  end
end
