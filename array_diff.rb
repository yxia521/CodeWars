# 6 kyu
# Array.diff
# delete the element in a that is also in b, return the deleted a

# array_diff([1,2],[1]) == [2]
# If a value is present in b, all of its occurrences must be removed from the other:

# array_diff([1,2,2,2,3],[2]) == [1,3]

# Test.assert_equals(array_diff([1,2], [1]), [2], "a was [1,2], b was [1], expected [2]")
# Test.assert_equals(array_diff([1,2,2], [1]), [2,2], "a was [1,2,2], b was [1], expected [2,2]")
# Test.assert_equals(array_diff([1,2,2], [2]), [1], "a was [1,2,2], b was [2], expected [1]")
# Test.assert_equals(array_diff([1,2,2], []), [1,2,2], "a was [1,2,2], b was [], expected [1,2,2]")
# Test.assert_equals(array_diff([], [1,2]), [], "a was [], b was [1,2], expected []")

# def array_diff(array1, array2)
#   array1.map do |num|
#     array1.delete(num) if array2.include?(num)
#   end
#   array1
# end

# --- better sol ---
def array_diff(a, b)
  p a - b
end

array_diff([1,2],[1]) == [2]
array_diff([1,2,2,2,3],[2]) == [1,3]
array_diff([1,2,2], [1]) == [2,2]
array_diff([1,2,2], [2]) == [1]
array_diff([1,2,2], []) == [1,2,2]
array_diff([], [1,2]) == []
