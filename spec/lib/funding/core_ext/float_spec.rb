describe Float do
  describe '#prime_number?' do
    context 'prime number' do
      it { expect(2.to_f).to be_prime_number }
      it { expect(3.to_f).to be_prime_number }
      it { expect(5.to_f).to be_prime_number }
    end

    context 'composite number' do
      it { expect(4.to_f).to_not be_prime_number }
      it { expect(6.to_f).to_not be_prime_number }
      it { expect(8.to_f).to_not be_prime_number }
    end
  end
end