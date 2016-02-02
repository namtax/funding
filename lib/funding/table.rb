module Funding
  class Table
    def initialize(number)
      @number = number
      @primes = Prime.first(number)
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
      primes.map { |p| [p, *multiples(p)] }
    end

    def multiples(p)
      primes.map { |pm| pm * p }
    end
  end
end