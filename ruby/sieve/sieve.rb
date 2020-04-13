class Sieve
  def initialize(limit)
    @limit = limit
  end

  attr_reader :limit

  def primes
    numbers = Array.new(limit + 1, true)
    numbers[0] = numbers[1] = false
    (2..Math.sqrt(limit)).each do |number|
      (2 * number).step(limit, number) do |multiple|
        numbers[multiple] = false
      end
    end
    (2..limit).select { |num| numbers[num] }
  end
end
