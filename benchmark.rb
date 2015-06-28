require_relative 'prime_number'
require_relative 'multiplication_table'

def calculate_prime_table size
	primes = PrimeNumber.find_primes size
	table = MultiplicationTable.new primes
	table.present
end

def benchmark_table size
	puts "Calculating prime table of size #{size} takes #{time_composition size } seconds"
end

def time_composition size
	t1 = Time.now
	calculate_prime_table size
	t2 = Time.now
	delta = t2 - t1
end

benchmark_table 5
benchmark_table 10
benchmark_table 100
benchmark_table 500
benchmark_table 1000
benchmark_table 1500
