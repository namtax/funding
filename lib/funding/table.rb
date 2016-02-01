module Funding
  class Table
    NUMBER_OF_DIVISORS = 2

    def initialize(number)
      @number = number
      @primes = fetch_prime_numbers
    end

    def to_s
      [header, *rows]
    end

    private
    attr_reader :number, :primes

    def header
      [nil, *primes]
    end

    def rows
      primes.map.with_index do |pm, i|
        [primes[i], *primes.map { |pm| pm * primes[i] }]
      end
    end

    def fetch_prime_numbers
      prime_numbers = []
      index = 1.0

      while prime_numbers.size < number
        index += 1.0
        prime_numbers << index if is_prime_number?(index)
      end

      prime_numbers
    end

    def is_prime_number?(number)
      (1..number).map{|x| number / x }
        .select{ |x| x % 1 == 0 }
        .size == NUMBER_OF_DIVISORS
    end
  end
end