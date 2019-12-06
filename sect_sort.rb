# 7 kyu
# Sectional Array Sort

# In this kata you are given an array to sort but you're expected to start 
# sorting from a specific position of the array (in ascending order) and 
# optionally you're given the number of items to sort.

# Examples:
# sect_sort([1, 2, 5, 7, 4, 6, 3, 9, 8], 2) //=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
# sect_sort([9, 7, 4, 2, 5, 3, 1, 8, 6], 2, 5) //=> [9, 7, 1, 2, 3, 4, 5, 8, 6]
# Documentation:
# sect_sort($array, $start, $length);
# array - array to sort
# start - index position to begin sorting
# length - number of items to sort (optional)
# if the length argument is not passed or is zero, you sort all items to the 
# right of the start postiton in the array
  
# split the array by the start_index 
# for the array starting from the start_index, then sort
# join them together as a new array
  

def sect_sort(array, start_index, length)
  if length == 0
    array[start_index..-1] = array[start_index..-1].sort
    array
  else
    new_array = [array[0..start_index-1], array[start_index,length], array - array[0..start_index-1] - array[start_index,length]]
    new_array[1] = new_array[1].sort
    new_array.flatten
  end
end

p sect_sort([9, 7, 4, 2, 5, 3, 1, 8, 6], 2, 5) == [9, 7, 1, 2, 3, 4, 5, 8, 6]
p sect_sort([9, 7, 4, 2, 5, 3, 1, 8, 6], 2, 0) == [9, 7, 1, 2, 3, 4, 5, 6, 8]
