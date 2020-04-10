# 6 kyu
# Counting Duplicates

# Count the number of Duplicates
# Write a function that will return the count of distinct case-insensitive 
# alphabetic characters and numeric digits that occur more than once in the 
# input string. The input string can be assumed to contain only alphabets 
# (both uppercase and lowercase) and numeric digits.

# Example
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice

# algo:

# find all of the characters which count > 1, this returns a new array
# find the uniq char of this new array, then count the number of elements 
# of this array by calling .size
# (have to call .downcase since it's case-insensitive)

def duplicate_count(text)
  text.downcase.chars.find_all{|char| text.downcase.count(char.downcase) > 1}.uniq.size
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2
