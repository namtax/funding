module Funding
  class Prime
    def self.first(number)
      prime_numbers = []
      index = 1.0

      while prime_numbers.size < number
        index += 1.0
        prime_numbers << Integer(index) if index.prime_number?
      end

      prime_numbers
    end
  end
end