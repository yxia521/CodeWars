# 6 kyu
# Missing Alphabet
# In this Kata you have to create a function,named insertMissingLetters,
# that takes in a string and outputs the same string processed in a particular way.

# The function should insert only after the first occurence of each character 
# of the input string, all the alphabet letters that:
# -are NOT in the original string
# -come after the letter of the string you are processing

# Each added letter should be in uppercase, the letters of the original string 
# will always be in lowercase.

# input: "holly"
# missing letters: "a,b,c,d,e,f,g,(h)i,j,k,(l)m,n,(o)p,q,r,s,t,u,v,w,x,(y)z"
# output: "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"

# You don't need to validate input, the input string will always contain a 
# certain amount of lowercase letters (min 1 / max 50).
# -----------------------------------------------------------------------
# initialize a complete alphabetic table
# initialize an empty array = []
# iterate thru the string, 
#   grab that char into the array
#   for each char, grab all uppercase letters after that char in the table, 
#   end
# p result
# -----------------------------------------------------------------------

# --- my code is WRONG: almost there ---

ALL_LETTERS = ('A'..'Z').to_a

def insert_missing_Letters(string)
  result = []
  chars = string.chars
  string.each_char do |char|
    
    result << chars.shift
    current_char_index = ALL_LETTERS.index(char.upcase)
    next if result.include?(ALL_LETTERS[(current_char_index+1)..-1])
    result << ALL_LETTERS[(current_char_index+1)..-1].join.delete(string).chars 
    end
  p result.flatten.join # "hIJKLMNOPQRSTUVWXYZoPQRSTUVWXYZlMNOPQRSTUVWXYZlyZ"
end

# --- correct sol ---

def insert_missing_letters(st)
    alp = ("a".."z").to_a.map {|el| !st.include?(el) ? el.upcase : el}
    res = []
    st.chars.each do |ch|
     tail = alp[alp.index(ch)..-1].select {|el| el == el.upcase}.join if !res.include?(ch)
     tail = "" if res.include?(ch)
     res << ch 
     res << tail
     end 
     res.join
end

# or

def insert_missing_letters(st)
  st.chars.each_with_object('') { |c, r|          
    r << (r.include?(c) ? c : "#{c}#{((c..'z').to_a.map(&:upcase).drop(1) - st.chars.map(&:upcase)).join}")
  }
end

insert_missing_Letters("holly") == "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"
