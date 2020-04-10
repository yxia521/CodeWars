# 6 kyu
# Split and then add both sides of an array together.
# Task
# You will receive an array as paramter that contains 1 or more integers and a number n.

# --------------- Example ------------
# Input: {4, 2, 5, 3, 2, 5, 7}, n=2

# Round 1
# -------
# step 1: {4, 2, 5}  {3, 2, 5, 7}

# step 2:    {4, 2, 5}
#         {3, 2, 5, 7}

# step 3: {3, 6, 7, 12}

# Round 2
# -------
# step 1: {3, 6}  {7, 12}

# step 2:  {3,  6}
#          {7, 12} 

# step 3: {10, 18}

# Result: {10, 18}
# --------------------------------------

# n.times do
#   split the array into 2 groups
#     - array.size/2: size of first group
#     - the rest will the second group
#   add the group elements:
#     - if the sizes of two groups are not equal
#       - prepend a 0 at group 1, and then add the corresponding elemenets up
# end
  
def split_and_add(arr, n)
  n.times do                           # do this n times
    first_group = arr[0, arr.size / 2] # always split by 2
    second_group = arr[(arr.size / 2)..-1]
    sum = []
    if first_group.size != second_group.size
      first_group = first_group.prepend(0)
      first_group.each_with_index{|num, index| sum << (num + second_group[index])} 
    else
      first_group.each_with_index{|num, index| sum << (num + second_group[index])}
    end
      arr = sum 
  end
  p arr
end

split_and_add([1, 2, 5, 7, 2, 3, 5, 7, 8], 1) == [2, 4, 7, 12, 15]
split_and_add([1, 2, 5, 7, 2, 3, 5, 7, 8], 2) == [7, 14, 19]
split_and_add([4, 2, 5, 3, 2, 5, 7], 2) == [10, 18]
