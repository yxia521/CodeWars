# 6 kyu
# String subpattern recognition III
# Similar to the previous kata, but this time you need to operate with shuffled 
# strings to identify if they are composed repeating a subpattern

# # Since there is no deterministic way to tell which pattern was really the 
# original one among all the possible permutations of a fitting subpattern, 
# return a subpattern with sorted characters, otherwise return the base string 
# with sorted characters (you might consider this case as an edge case, with the 
# subpattern being repeated only once and thus equalling the original input 
# string).

# if no repeat pattern, return sorted original one
# if repeat, return sorted correponding char

def has_subpattern(string)
  string.chars.sort.uniq.join if string.chars.uniq.size == 1 || string.chars.map{|i| string.count(i) == 1}
end
  
p has_subpattern("a") == "a"; #no repeated pattern, just one character
p has_subpattern("aaaa") == "a" #just one character repeated
p has_subpattern("abcd") == "abcd" #base pattern equals the string itself, no repetitions
p has_subpattern("babababababababa") == "ab" #remember to return the base string sorted"
p has_subpattern("bbabbaaabbaaaabb") == "ab" #same as above, just shuffled
