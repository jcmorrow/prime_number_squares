Instructions:

 From console:
 > ruby benchmark.rb #(if interested)
 > ruby 10_prime_table.rb

Scaling wise it's ok. The prime number finding function is the simplest possible way to do it (I think). There are some shortcuts to computing prime numbers I believe, but this seems like an adequate solution given than we're dealing with a size 10 table for now. Tables above 500 in size start taking a half-second or more (on my hardware), which produces notiecable lag and must be taken into consideration. Also it's worth noting that the time the function takes to compute is exponential compared to it's size, so while computing a table of the first 500 primes takes a half second, computing something twice the size takes over three times as long.