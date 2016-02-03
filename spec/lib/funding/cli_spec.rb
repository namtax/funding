module Funding
  describe CLI do
    subject     { described_class }
    let(:table) { double }
    let(:input) { ['--­­count', '10­'] }

    before do
      allow(table).to receive(:run).with(10, anything).and_return(['table'])
    end

    context 'valid input' do
      it { expect(subject.run(['--count', '10'], table)).to eq(['table']) }
    end

    context 'invalid input' do
      let(:error) { /Please supply valid input/ }

      before do
        expect(subject).to receive(:puts).with(error)
        expect(subject).to receive(:puts).with(anything)
      end

      context 'invalid option' do
        it { subject.run(['--c', '10'], table) }
      end

      context 'value missing' do
        it { subject.run(['--count'], table) }
      end

      context 'value incorrect type' do
        it { subject.run(['--count', 'hello'], table) }
      end
    end
  end
end