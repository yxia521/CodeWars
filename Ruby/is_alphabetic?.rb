# 7 kyu
# Alphabetically ordered
# Your task is very simple. Just write a function isAlphabetic(s), which takes an input string s in lowercase and returns true/false depending on whether the string is in alphabetical order or not.

# For example, isAlphabetic('kata') is False as 'a' comes after 'k', but isAlphabetic('ant') is True.

def isAlphabetic(string)
  string.chars.sort == string.chars
end

  
p isAlphabetic('kata') == false
p isAlphabetic('ant') == true
p isAlphabetic('asd') == false
p isAlphabetic('codewars') == false
