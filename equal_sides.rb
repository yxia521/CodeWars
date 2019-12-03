# 6 kyu
# Equal Sides Of An Array

# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.


# algo
# iterate thru the array
#   - for each number, calculate the sum of its right side and the sum of its left side
#   - whenever left_sum == right_sum
#   - return that number's index
# end loop
# if no any number, return -1

def equal_sides(array)
  # at index 0 
  return 0 if 0 == array[1..-1].sum 
  
  # start at index 1
  return -1 if array == array.sort || array == array.sort{|a, b| b<=>a}

  result = nil
  0.upto(array.size-2) do |index|
    left_sum = array[0..index].sum
    right_sum = array[(index+2)..-1].sum
    result = index + 1 
    break if left_sum == right_sum
  end
  result
end
  
  
p equal_sides([1, 2, 3, 4, 3, 2, 1]) == 3 # 4's index is 3
p equal_sides([1, 100, 50, -51, 1, 1]) == 1 # 100's index is 1
p equal_sides([20, 10, -80, 10, 10, 15, 35]) == 0 # 20's index is 0
p equal_sides([1, 2, 3, 4, 5, 6]) == -1 # no such number
