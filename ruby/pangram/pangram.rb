class Pangram
  def self.pangram?(sentence)
    ('a'..'z').all? { |word| sentence.downcase.include? (word) }
  end
end