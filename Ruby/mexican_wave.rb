# 6 kyu
# Mexican Wave
# Task
# In this simple Kata your task is to create a function that turns a string 
# into a Mexican Wave. You will be passed a string and you must return that 
# string in an array where an uppercase letter is a person standing up.

# Rules
# 1.  The input string will always be lower case but maybe empty.
# 2.  If the character in the string is whitespace then pass over it as if 
# it was an empty seat.
    
# initialize an empty array result = []
# iterate thru the string,
#   capitalize the char at index 0, put the word to result
#   capitalize the char at index 1, put the word to result
#   ... next if the char is a space ' '
#   capitalize the char at index[string.size -1]

def wave(string)
  result = []
  0.upto(string.size-1) do |index|
    next if string[index] == ' '
    string[index] = string[index].upcase
    result << string
    string = string.downcase
  end
  p result
end

wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
