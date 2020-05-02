class RunLengthEncoding
  def self.encode(input)
    input
      .chars
      .slice_when { |a, b| a != b }
      .map { |repeated_chars| "#{repeated_chars.size > 1 ? repeated_chars.size : ''}#{repeated_chars[0]}" }
      .join
  end

  def self.decode(input)
    input
      .scan(/(\d*)([ \w]+?)/)
      .map { |times, char| char * (times.empty? ? 1 : times.to_i) }
      .join
  end
end
