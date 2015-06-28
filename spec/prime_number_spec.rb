require_relative '../prime_number'

RSpec.describe 'PrimeNumber' do
	describe '#new' do
		it 'initializes a PrimeNumber object with the given value' do

			prime = PrimeNumber.new(1)

			expect(prime.value).to eq(1)
		end
	end

	describe '#prime?' do
		it 'returns true for prime numbers' do
			expect(PrimeNumber.prime? 7).to be true
		end
		it 'returns false for non-prime numbers' do
			expect(PrimeNumber.prime? 6).to be false
		end
	end

	describe '#find_primes' do
		it 'returns a list of prime numbers' do
			expect(PrimeNumber.find_primes(10)).to eq([1, 2, 3, 5, 7, 11, 13, 17, 19, 23])
		end
	end
end