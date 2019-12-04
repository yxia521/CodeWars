# 7 kyu
# Alphabetical Sequence
# In this kata you will be given a random string of letters and tasked with 
# returning them as a string of comma-separated sequences sorted alphabetcally, 
# with each sequence starting with an uppercase character followed by n-1 
# lowercase characters, where n is the letter's alphabet position 1-26.

# Technical Details
# The string will include only letters.
# The first letter of each sequence is uppercase followed by n-1 lowercase.
# Each sequence is seperated with a comma.
# Return value needs to be a string.


# initialize an empty array
# iterate thru string
#   for each char, we print it out n times, n == position in alphabet table, Capitalize first letter
#   array << result
# return array.join(',')
def alphaSeq(string)
  result = []
  position = ('a'..'z').to_a.zip(1..26).to_h
  string.chars.each do |char|
    result << (char.downcase * position[char.downcase]).capitalize
  end
  p result.sort.join(',')
end

alphaSeq("ZpglnRxqenU") == "Eeeee,Ggggggg,Llllllllllll,Nnnnnnnnnnnnnn,
Nnnnnnnnnnnnnn,Pppppppppppppppp,Qqqqqqqqqqqqqqqqq,Rrrrrrrrrrrrrrrrrr,
Uuuuuuuuuuuuuuuuuuuuu,Xxxxxxxxxxxxxxxxxxxxxxxx,Zzzzzzzzzzzzzzzzzzzzzzzzzz"
