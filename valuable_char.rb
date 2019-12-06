# 7 kyu
# Most valuable character
# In this Kata, you will be given a string and your task is to return the 
# most valuable character. The value of a character is the difference between 
# the index of its last occurrence and the index of its first occurrence. Return 
# the character that has the highest value. If there is a tie, return the 
# lexicographically lowest character.
# All inputs will be lower case.
# Last occurrence is equal to first occurrence of each character. 
# Return lexicographically lowest.

# value = last_index - first_index
# for x: 3 = 4 - 1
# for y: 3 = 5 - 2
# for z: 3 = 6 - 3
# they are all equal, but x is the lowest char in the dictionary

#   for 'y'
#   get the first index of the number, 2
#   get the last index of the number
#     - loop back, starting from string[-1], when get this number, get its index
#     - for example, 'y', last index = 5, total length = 7, 7 - index.abs(-2) = 5
#   get the difference
#     - 5 - 2 = 3
      
def most_valuable_char(string)
  uniq_chars = string.chars.uniq # ['a', 'x', 'y', 'z']
  result = uniq_chars.map do |current_char|
    first_index = string.index(current_char)
    index_back = -1
    
    loop do 
    break if string[index_back] == current_char
      index_back -= 1
    end
    last_index = string.size - index_back.abs
    difference = last_index - first_index
  end
  
  chars_and_difference = {} 
  uniq_chars.each{|char| chars_and_difference[char] = result.shift} 
  # chars_and_difference {"a"=>0, "x"=>3, "y"=>3, "z"=>3}
  
  valuable_char = ''
  chars_and_difference.map{|k, v| valuable_char << k if chars_and_difference.values.max == v}
  p valuable_char.chars.sort.first # "xyz"
end

# --- smarter sol ---

# [.., ..]: first sort by the difference, and then sort by current character
def most_valuable_char(st)
  p st.split('').sort_by{ |c| [st.index(c) - st.rindex(c), c] }.[0]
end

most_valuable_char('a') == 'a'
most_valuable_char('ab') == 'a'
most_valuable_char("axyzxyz") == 'x'
  
