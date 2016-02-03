module Funding
  class TerminalTable
    def self.run(count, table, term_table = Terminal::Table.new)
      term_table.rows     = table.rows
      term_table.headings = table.header
      puts term_table
    end
  end
end