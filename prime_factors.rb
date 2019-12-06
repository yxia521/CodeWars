# 5 kyu
# Primes in numbers

# Given a positive number n > 1 find the prime factor decomposition of n. 
# The result will be a string with the following form :

#  "(p1**n1)(p2**n2)...(pk**nk)"
# with the p(i) in increasing order and n(i) empty if n(i) is 1.

# Example: n = 86240 should return "(2**5)(5)(7**2)(11)"

require 'prime'

def prime_factors(n) 
  factor_and_power = Prime.prime_division(n) # [[2, 5], [5, 1], [7, 2], [11, 1]]
  result = factor_and_power.map do |pair| 
    if pair.last == 1
      "(#{pair.first})"
    else
      "(#{pair.first}**#{pair.last})"
    end
  end
  p result.join
end

prime_factors(86240)
prime_factors(7775460)

# "(2**5)(5)(7**2)(11)"
# "(2**2)(3**3)(5)(7)(11**2)(17)"
