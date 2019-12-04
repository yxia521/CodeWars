# 7 kyu
# Alphabet symmetry

# Consider the word "abode". We can see that the letter a is in position 1 and b 
# is in position 2. In the alphabet, a and b are also in positions 1 and 2. 
# Notice also that d and e in abode occupy the positions they would occupy in 
# the alphabet, which are positions 4 and 5.

# Given an array of words, return an array of the number of letters that occupy 
# their positions in the alphabet for each word.
# Input will consist of alphabet characters, both uppercase and lowercase.No spaces.



# iterate thru the array, map, transfer each word into array
  # for each word subarray, using each_with_index to iterate
    # - if the char's index == LOWERCASE.index(char), count + 1

LOWERCASE = ('a'..'z').to_a

def symmetry_letters(array)
  result = []
  array.map(&:chars).each do |subarray|
  count = 0
    subarray.each_with_index do |char, index|
      count += 1  if index == LOWERCASE.index(char.downcase) 
    end
  result << count
  end
  p result
end

symmetry_letters(["abode","ABc","xyzD"]) == [4, 3, 1]

# --- smarter sol ---

def solve(strings)
  strings.map{ |s| s.downcase.each_char.zip('a'..'z').count{ |a, b| a == b } }
end

# zip is a VERY important and handy way to map letters to number
# for example:
# ('a'..'z').to_a.zip(1..26)
# [["a", 1], ["b", 2], ["c", 3], ["d", 4], ["e", 5], ["f", 6], ["g", 7], 
# ["h", 8], ["i", 9], ["j", 10], ["k", 11], ["l", 12], ["m", 13], ["n", 14], 
# ["o", 15], ["p", 16], ["q", 17], ["r", 18], ["s", 19], ["t", 20], ["u", 21], 
# ["v", 22], ["w", 23], ["x", 24], ["y", 25], ["z", 26]] 

# then transfer it to hash looks more straightforward
# ('a'..'z').to_a.zip(1..26).to_h
# {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, "f"=>6, "g"=>7, "h"=>8, 
#   "i"=>9, "j"=>10, "k"=>11, "l"=>12, "m"=>13, "n"=>14, "o"=>15, 
#   "p"=>16, "q"=>17, "r"=>18, "s"=>19, "t"=>20, "u"=>21, "v"=>22, 
#   "w"=>23, "x"=>24, "y"=>25, "z"=>26} 

