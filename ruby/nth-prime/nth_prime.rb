class Prime
  def self.nth(nth)
    raise ArgumentError if nth == 0
    primes = [2]
    (3..).step(2) do |num|
      break if primes.size == nth
      primes << num if (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
    end
    primes[nth - 1]
  end
end
