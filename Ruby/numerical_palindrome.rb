# 6 kyu
# Numerical Palindrome #3.5
# A palindrome is a word, phrase, number, or other sequence of characters 
# which reads the same backward as forward. Examples of numerical palindromes 
# are: 2332, 110011, 54322345

# For a given number num, write a function which returns an array of all 
# the numerical palindromes contained within each number. The array should 
# be sorted in ascending order and any duplicates should be removed.

# **In this kata, single digit numbers and numbers which start or end with 
# zeros (such as 010 and 00) are NOT considered valid numerical palindromes.

# If num contains no valid palindromes, return "No palindromes found". 
# Otherwise, return "Not valid" if the input is not an integer or is less than 0.

# input > 0, must be integer
# find all sub digits, filter out these who are palindrome

def palindrome(integer)
  if integer.to_i.to_s == integer || integer < 0
    puts "Not valid"
  else
    all_digits = integer.to_s.chars
    all_subdigits = []
    start_index = 0
    end_index = 0
    loop do
      loop do
        all_subdigits << all_digits[start_index..end_index]
        end_index += 1
        break if end_index == all_digits.size
      end
      start_index += 1
      end_index = start_index
      break if start_index == all_digits.size
    end

    palindrome = []
    return "No palindromes found" if all_digits.uniq == all_digits

    all_subdigits.select do |subarray| 
      palindrome << subarray  if subarray == subarray.reverse 
    end
    result = palindrome.uniq.select do |number| 
      number.size > 1
    end
    final = result.map{|n| n.join}.select{|string| !string.end_with?('0') || !string.start_with?('0')}
    p final.map{|string| string.to_i}.sort
  end
end

palindrome(1221) == [22, 1221] # 1,12,122,1221,2,22,221,2,21,1
palindrome(34322122)  ==  [22, 212, 343, 22122]
palindrome(1001331)   ==  [33, 1001, 1331]
palindrome(1294)      ==  "No palindromes found"
palindrome("1221")    ==  "Not valid"
