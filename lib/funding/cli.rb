module Funding
  class CLI
    def self.run(input, table)
      opts = fetch_options(input)

      if opts[:count].nil?
        puts 'Please supply valid input'
      else
        table.run(opts[:count].to_i)
      end
    end

    def self.fetch_options(input)
      opts = Slop.parse(input, suppress_errors: true) do |o|
        o.integer '--count'
      end
    end
  end
end