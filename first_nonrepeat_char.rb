# 5 kyu
# First non-repeating character
# Write a function named first_non_repeating_letter that takes a string input, and 
# returns the first character that is not repeated anywhere in the string.

# For example, if given the input 'stress', the function should return 't', since 
# the letter t only occurs once in the string, and occurs first in the string.

# As an added challenge, upper- and lowercase letters are considered the same 
# character, but the function should return the correct case for the initial letter. 
# For example, the input 'sTreSS' should return 'T'.

# If a string contains all repeating characters, it should return an empty string ("")

# algo:
# initialize an empty array
# iterate thru the string
#   for each char, result << char if the string.count(char) == 1
# end the iteration
# return the first element of the result, convert it to string in case of nil

def first_non_repeating_letter(string)
  result = []
  string.each_char{|char| result << char if string.downcase.count(char.downcase) == 1}
  result.first.to_s
end

p first_non_repeating_letter("stress") == "t"
p first_non_repeating_letter('sTreSS') == "T"
p first_non_repeating_letter("aaabbb") == ""
