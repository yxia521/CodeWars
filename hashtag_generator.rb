# 5 kyu
# The Hashtag Generator

# The marketing team is spending way too much time typing in hashtags.
# Let's help them with our own Hashtag Generator!

# Here's the deal:

# It must start with a hashtag (#).
# All words must have their first letter capitalized.
# If the final result is longer than 140 chars it must return false.
# If the input or the result is an empty string it must return false.
    
# Examples
# " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
# "    Hello     World   "                  =>  "#HelloWorld"
# ""                                        =>  false
  
# if the string is '' , return false
# add a hash at the very beginning
# split the string
#     - for each word, capitalize the first char of it
#     - join the word
# if the final result.size > 140, return false
  
def hashtag_generator(string)
  return false if string.squeeze == " " || string.squeeze == ""
  result = []
  string.split.map{|word| result << word.capitalize}
  result.first.prepend("#") 
  if result.join.size > 140
    false
  else
    result.join
  end
end

p hashtag_generator(" Hello there thanks for trying my Kata") == "#HelloThereThanksForTryingMyKata"
p hashtag_generator("    Hello     World   ") ==  "#HelloWorld"
p hashtag_generator("") == false 
p hashtag_generator(" " * 200) == false
p hashtag_generator("code" + " " * 140 + "wars") == "#CodeWars"
