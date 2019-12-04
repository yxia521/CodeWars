# 5 kyu
# Where my anagrams at?
# What is an anagram? Well, two words are anagrams of each other if 
# they both contain the same letters. For example:

# 'abba' & 'baab' == true

# 'abba' & 'bbaa' == true

# 'abba' & 'abbba' == false

# 'abba' & 'abca' == false

# Write a function that will find all the anagrams of a word from a list. 
# You will be given two inputs a word and an array with words. You should 
# return an array of all the anagrams or an empty array if there are none. 

# iterate thru the array
#   - if the word equal to the given word, put it to the new result array
#   - if none, return empty array

def anagrams(word, words)
  words.select do |element|
    element if element.chars.sort == word.chars.sort
  end
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []
