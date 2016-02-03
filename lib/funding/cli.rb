module Funding
  class CLI
    COUNT_RANGE = (1..25)

    def self.run(input, tt = Funding::TerminalTable)
      opts = fetch_options(input)

      if (count = opts[:count]) && (COUNT_RANGE.include?(count))
        tt.run(count, Table.new(count))
      else
        puts "Please supply valid input\n_________________________\n "
        puts opts.to_s
      end
    end

    def self.fetch_options(input)
      opts = Slop.parse(input, suppress_errors: true) do |o|
        o.integer '--count', 'Integer between 1 and 25'
        o.on '--help' do
          puts o
          exit
        end
      end
    end
  end
end
