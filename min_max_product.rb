# 5 kyu
# Minimum and Maximum Product of k Elements - Advanced
# Given a list of integers and a positive integer k (> 0), find the minimum 
# and maximum possible product of k elements taken from the list.

# If you cannot take enough elements from the list, return None/nil.

# Examples
# numbers = [1, -2, -3, 4, 6, 7]

# k = 1  ==>  -3, 7
# k = 2  ==>  -21, 42    # -3*7, 6*7
# k = 3  ==>  -126, 168  # -3*6*7, 4*6*7
# k = 7  ==>  nil        # there are only 6 elements in the list
# Note: the test lists can contain up to 500 elements, so a naive approach will not work.

# algo:
# if k > numbers.size, return nil
# else 
#   max product == the product of k largest numbers
#   min product == the min element * ((k-1) largest numbers)

#   so, we first sort the array
#     max_nums = find k largest numbers: numbers.max(k)
#   do the rest work
# have to consider a special case: array with 0

def find_min_max_product(numbers, k)
  return nil if k > numbers.size
  sorted_num = numbers.sort
  return [sorted_num.min, sorted_num.max] if k < 2
  if numbers.include?(0)    
    # there must be a product is 0, calculate another product and then compare
    return [sorted_num.min(k).inject(:*), 0].sort if sorted_num.min(k).inject(:*) < 0
    return [sorted_num.max(k).inject(:*), 0].sort if sorted_num.max(k).inject(:*) > 0
  else
    max_nums = sorted_num.max(k)
    max_product = max_nums.inject(:*)
    max_nums.pop
    min_product = sorted_num.min * max_nums.inject(:*)
    [min_product, max_product]
  end
end

# for these test cases, below is a better sol (not for all codewars cases)
# minmax return a 2 element array 
def find_min_max_product(numbers, k)
  return nil if k > numbers.size
  sorted_num = numbers.sort
  [sorted_num.min(k).inject(:*), sorted_num.max(k).inject(:*)].minmax
end

p find_min_max_product([1, -2, -3, 4, 6, 7], 7)
p find_min_max_product([1, -2, -3, 4, 6, 7], 1) == [-3, 7]
p find_min_max_product([0, 1, 2, 3, 4], 2) == [0, 12]
p find_min_max_product([0, -1, -2, -3, -4], 3) == [-24, 0]
p find_min_max_product([0, 6, 3, 5, 4], 4) == [0, 360]
