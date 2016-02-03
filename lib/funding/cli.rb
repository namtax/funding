module Funding
  class CLI
    def self.run(input, tt = Funding::TerminalTable)
      opts = fetch_options(input)

      if count = opts[:count]
        tt.run(count, Table.new(count))
      else
        puts 'Please supply valid input'
      end
    end

    def self.fetch_options(input)
      opts = Slop.parse(input, suppress_errors: true) do |o|
        o.integer '--count'
      end
    end
  end
end
