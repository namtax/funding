module Funding
  class Table
    def initialize(count)
      @primes = Prime.first(count)
    end

    def to_s
      [header, *rows]
    end

    private
    attr_reader :primes

    def header
      [nil, *primes]
    end

    def rows
      primes.map { |p| Row.new(p, primes).show }
    end
  end
end