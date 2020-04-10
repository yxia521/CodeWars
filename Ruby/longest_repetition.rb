# 6 kyu
# Character with longest consecutive repetition
# For a given string s find the character c (or C) with longest consecutive repetition and return:

# [c, l]
# where l (or L) is the length of the repetition. If there are two or more characters with the same l return the first.

# For empty string return:

# ["", 0]

# iterate thru the string by index
# result = []
# count = 1
#   string.chars.each
#     put the char into the result
#     if the current is equal to the next one, count += 1
#       if the current char is not equal to next one, count = 1, 
#   end

# --- I didn't work it out on first try, codewars sol, don't understand ---

def longest_repetition chars
  return ["", 0] if chars.empty?
  
  chars.chars
       .chunk  { |char| char }
       .map    { |char, chars| [char, chars.size] }
       .max_by { |char, size| size }
       
end

# --- second try, it works! ---

def longest_repetition chars
  return ["", 0] if chars == ""
  digits = chars.chars
  counter =[]
  char = []
  index = 0

  loop do
    count = 1
    loop do
      count += 1 if digits[index] == digits[index+1]
      index += 1
      break if digits[index] != digits[index+1]
    end
    counter << count
    char << digits[index]
    break if index > digits.size - 2
  end
  counter
  char
  longest_char = char[counter.index(counter.max)]
  p [longest_char, counter.max]
end

longest_repetition("bbbaaabaaaa") == ['a', 4]
longest_repetition("") == ["", 0]
