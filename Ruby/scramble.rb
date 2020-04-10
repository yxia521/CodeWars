# 5 kyu
# Scramblies

# Complete the function scramble(str1, str2) that returns true if a portion of 
# str1 characters can be rearranged to match str2, otherwise returns false.
# Notes:
# Only lower case letters will be used (a-z). No punctuation or digits will be 
# included. Performance needs to be considered
# Input strings s1 and s2 are null terminated.

# algo:
# iterate thru the s2, return true if all chars of s2 is included in s1

# --- not work for last case, cuz .delete deletes all corresponding chars ---

def scramble(s1, s2)
  result = []
  s2.each_char do |char| 
    if s2.count(char) > 1 && !s1.delete(char).include?(char) 
      result << false
    elsif s1.include?(char)
      result << true
    else
      result << false
    end
  end
  result.uniq.size == 1 
end

# --- codewars sol ---

# s1.size must be longer than or equal to s2, s1 must include every char of s2
def scramble(s1,s2)
  s2.chars.uniq.all?{|x| s2.count(x) <= s1.count(x)}
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble("javscripts", "javascript") == false # count on 'a' in s2 must <= 'a' in s1 
p scramble("scriptingjava", "javascript") == true
# count on every char in s1 must >= char in s2
