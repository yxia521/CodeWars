# 6 kyu
# Alphabetized
# The alphabetized kata
# Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

# The input is restricted to contain no numerals and only words containing the english alphabet letters.

# delete everything excpet letters
# sort the array, use downcase to do case-insensitiveness

def alphabetized(string)
  string.gsub!(/[^a-z]/i, '')
  string.chars.sort{|a, b| a.downcase <=> b.downcase}.join
end

# --- shorter sol ---

def alphabetized(string)
  string.gsub!(/[^a-z]/i, '')
  string.chars.sort_by{|char| char.downcase}.join
end
  
p alphabetized("The Holy Bible") == "BbeehHilloTy"
