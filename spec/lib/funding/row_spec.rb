module Funding
  describe Row do
    subject   { described_class.new(2, Prime.first(10)) }
    let(:row) { [2, 4, 6, 10, 14, 22, 26, 34, 38, 46, 58] }

    describe '#show' do
      it { expect(subject.show).to eq row }
    end
  end
end