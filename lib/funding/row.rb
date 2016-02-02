module Funding
  class Row
    def initialize(number, primes)
      @number = number
      @primes = primes
    end

    def show
      [number, *multiples]
    end

    private
    attr_reader :number, :primes

    def multiples
      primes.map { |p| p * number }
    end
  end
end