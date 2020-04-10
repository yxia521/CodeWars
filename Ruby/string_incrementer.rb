# 5 kyu
# String incrementer

# Your job is to write a function which increments a string, to create a new string.
# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
# Attention: If the number has leading zeros the amount of digits should be considered.

# split the string by a-z
#   if array.empty?
#     suffix a "1" to the original string
#   else the last char is a number string
#     number.to_i + 1
#   end

def string_increment(string)
  result = string.split(/[a-z]/i)
  new_str = ''
  if string[-1] =~ /[a-z]/i || string == ""
    new_str = string + "1"
  else
    digits_size = result.last.size
    if ((result.last.to_i + 1).to_s).size < digits_size # means 0 doestn't matter
      new_str = string[0, string.size-result.last.to_i.to_s.size]+(result.last.to_i + 1).to_s
    else
      new_str = string[0, string.size - digits_size] + (result.last.to_i + 1).to_s
    end
  end
  new_str
end

p string_increment("foo") == "foo1"
p string_increment("foobar23") == "foobar24"
p string_increment("foo0042") == "foo0043"
p string_increment("foo9") == "foo10"
p string_increment("foo099") == "foo100"
p string_increment("") == "1"
