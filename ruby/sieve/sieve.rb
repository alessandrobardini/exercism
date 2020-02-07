class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    return [] if @limit == 1
    prime_numbers = Array.new(@limit, true)
    (1..@limit).to_a.each do | i | 
      if prime_numbers[i]
        (i ** i..@limit).to_a.each do | j | 
          prime_numbers[j] = false
        end
      end
    end
    prime_numbers
    #prime_numbers.each_with_index.map{|n, i| i if n == true}.compact
  end
end
