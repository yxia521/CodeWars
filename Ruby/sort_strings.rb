# 6 kyu
# A String of Sorts
# Define a method that accepts 2 strings as parameters. 
# The method returns the first string sorted by the second.

# To elaborate, the second string defines the ordering. It is possible that 
# in the second string characters repeat, so you should remove repeating 
# characters, leaving only the first occurrence.

# Any character in the first string that does not appear in the second 
# string should be sorted to the end of the result in original order.

# --- I didn't work it out ---

# --- codewars sol ---

# first sort by the index of char at second string, so 'o' comes before 'f', 
# then when there's no 's' in the second string, sort by 'of'.size, which is 2

def sort_string(first, second)
  p first.chars.sort_by{|char| second.index(char) || second.size}.join
end

sort_string('foos', 'of') == 'oofs'
sort_string('string', 'gnirts') == 'gnirts'
sort_string('banana', 'abn') == 'aaabnn'
