# 7 kyu
# GCD sum
# Given the sum and gcd of two numbers, return those two numbers in ascending 
# order. If the numbers do not exist, return -1. These two numbers can be equal

# For example: 
# Given sum = 12 and gcd = 4...

# solve(12,4) = [4,8]. The two numbers 4 and 8 sum to 12 and have a gcd of 4.

# solve(12,5) = -1. No two numbers exist that sum to 12 and have gcd of 5.

# solve(10,2) = [2,8]. Note that [4,6] is also a possibility but we pick the one with the lower first element: 2 < 4, so we take [2,8].

# find these two numbers
  # find in the range of multiples of gcd
  # i.e. 4 8 12 16... and then the sum of any two of them is 12
  # if no such number, return -1
# print them out in ascending order by .sort

def sum_gcd(sum, gcd)
  timer = 1
  num = [] #[4, 8, 12, 16, ...]

  loop do
    num << gcd * timer
    timer += 1
    break if gcd * timer > sum
  end

  result = (num.combination(2).to_a + [[num.first, num.first]]).find{ |pair| pair.sum == sum}
  if result == nil
    p -1
  else
    p result
  end
end

# --- better sol ---

# I've never come up with this logic tho :(
# the if condition is understandable
def sum_gcd(sum,gcd)
  sum % gcd != 0 ? -1 : [gcd, sum - gcd]
end

sum_gcd(12,4) == [4,8]
sum_gcd(12,5) == -1
sum_gcd(10,2) == [2,8]
sum_gcd(6,3) == [3, 3]
