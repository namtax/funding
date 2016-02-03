module Funding
  describe TerminalTable do
    subject          { described_class }
    let(:table)      { double(rows: [1], header: [1]) }
    let(:term_table) { double }

    before do
      allow(term_table).to receive(:rows=).with(table.rows)
      allow(term_table).to receive(:headings=).with(table.header)
    end

    describe '.run' do
      it 'display terminal table to user' do
        expect(subject).to receive(:puts).with(term_table)
        subject.run(10, table, term_table)
      end
    end
  end
end