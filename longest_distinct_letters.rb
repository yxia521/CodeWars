# 7 kyu
# Two to One

# Take 2 strings s1 and s2 including only letters from a to z. Return a new 
# sorted string, the longest possible, containing distinct letters, each 
# taken only once - coming from s1 or s2.

def longest(s1, s2)
  all_letters = s1 + s2
  p all_letters.chars.uniq.sort.join
end
  
a = "xyaabbbccccdefww"
b = "xxxxyyyyabklmopq"
longest(a, b) # "abcdefklmopqwxy"

a = "abcdefghijklmnopqrstuvwxyz"
longest(a, a) # "abcdefghijklmnopqrstuvwxyz"
