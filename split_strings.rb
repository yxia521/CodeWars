# 6 kyu
# Split Strings
# Complete the solution so that it splits the string into pairs of two characters. 
# If the string contains an odd number of characters then it should replace the 
# missing second character of the final pair with an underscore.

def solution(s) 
  result = []
  0.step(s.size-1, 2) do |start_index|
    result << s[start_index, 2]
  end
  result[-1] += '_' if result.last.size < 2
  result 
end

# --- After I learn String#scan, I wrote ---
# smarter choice: String#scan returns an array that matches the pattern you want

def solution(s)
  if s.size.odd?
    s.scan(/../) + [s[-1]+'_'] # .. returns an array that each element is 2 chars of string
  else
    s.scan(/../)
  end
end

# --- highest vote sol ---
# first add '_', then do scan, because scan will automatically omit the char 
# if it doestn't match the pattern 

def solution(s)
  (s + '_').scan /../
end

p solution('abc') == ["ab", "c_"]
p solution('abcdef') == ["ab", "cd", "ef"]
p solution('abcdefg') == ['ab', 'cd', 'ef', 'g_']
