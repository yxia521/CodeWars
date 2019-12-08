# 5 kyu
# Simple Pig Latin

# Move the first letter of each word to the end of it, then add "ay" to the 
# end of the word. Leave punctuation marks untouched.

# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

# iterate thru the string, for each word, map
#   shift the first char and add to the word itself + ay

# line 18-20 is tricky part 
def pig_it(text)
  result = text.split.map do |word|
    if word =~ /[a-z]/i
      all_chars = word.chars
      first = all_chars.shift
      all_chars.join + first + 'ay' 
    else
      word
    end
  end
  result.join(' ')
end

# --- more concise sol ---

def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end

p pig_it('Pig latin is cool') == "igPay atinlay siay oolcay"
p pig_it('Hello world !') == "elloHay orldway !"
p pig_it("Nunc est bibendum") == "uncNay steay ibendumbay" 
