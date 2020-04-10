# 6 kyu
# Sums of Parts

# Let us consider this example (array written in general format):

# ls = [0, 1, 3, 6, 10]

# Its following parts:

# ls = [0, 1, 3, 6, 10]
# ls = [1, 3, 6, 10]
# ls = [3, 6, 10]
# ls = [6, 10]
# ls = [10]
# ls = []
# The corresponding sums are (put together in a list): [20, 20, 19, 16, 10, 0] i.e sum of all subarrays

# The function parts_sums (or its variants in other languages) will take as 
# parameter a list ls and return a list of the sums of its parts as defined above.

# find all the sub parts of the array (include itself and empty array)
#   - iterate thru 0 to array.size - 1 as the start_index of the loop 
#   - then print out the array[start_index..-1]
# do the sum
#  - the sum is actually the sum of each subarray

def parts_sums(array)
  sub_parts = []
  0.upto(array.size-1) do |start_index|
    sub_parts << array[start_index..-1]
  end
  sub_parts.map{|subarray| subarray.sum} << 0
end

p parts_sums([0, 1, 3, 6, 10]) ==  [20, 20, 19, 16, 10, 0]
p parts_sums([1, 2, 3, 4, 5, 6] ) == [21, 20, 18, 15, 11, 6, 0]
p parts_sums([744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]) \
== [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]
