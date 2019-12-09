# 6 kyu
# Create Phone Number
# Write a function that accepts an array of 10 integers (between 0 and 9), 
# that returns a string of those numbers in the form of a phone number.

# Example:
# createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
# The returned format must be correct in order to complete this challenge.
# Don't forget the space after the closing parentheses!

def createPhoneNumber(numbers)
  p "(#{numbers[0,3].join}) " + "#{numbers[3,3].join}-" + "#{numbers[-4..-1].join}"
end

# --- better sol ---
def createPhoneNumber(numbers)
  p '(%d%d%d) %d%d%d-%d%d%d%d' % numbers
end

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == "(123) 456-7890"
createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == "(111) 111-1111"
createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == "(123) 456-7890"
