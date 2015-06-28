require_relative 'prime_number'
require_relative 'multiplication_table'

primes = PrimeNumber.find_primes(10)
table = MultiplicationTable.new(primes)
table.print