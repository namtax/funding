module Funding
  class Table
    def initialize(count)
      @primes = Prime.first(count)
    end

    def header
      [nil, *primes]
    end

    def rows
      primes.map { |p| Row.new(p, primes).show }
    end

    private
    attr_reader :primes
  end
end