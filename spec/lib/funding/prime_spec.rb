module Funding
  describe Prime do
    subject      { described_class }
    let(:primes) { [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }

    describe '.first' do
      it { expect(subject.first(10)).to eq primes }
    end
  end
end