# 6 kyu
# Pairs of Bears

# In order to prove it's success and gain funding, the wilderness zoo needs 
# to prove to environmentalists that it has x number of mating pairs of bears.

# You must check within string (s) to fid all of the mating pairs, and return 
# a string containing only them. Line them up for inspection.

# Rules: Bears are either 'B' (male) or '8' (female), Bears must be together 
# in male/female pairs 'B8' or '8B', Mating pairs must involve two distinct 
# bears each ('B8B' may look fun, but does not count as two pairs).

# x will always be a positive integer, and s will never be empty
# x is number of mating pairs, s is the mating string

# iterate thru the string, then grab all pair strings that equal to PAIR1,2
#   set 2 chars as pair, move to next as the index + 1
# divide the string.size / 2 to get the number of pairs, then compare number_of_pair, x
# if number_of_pair < x, false
# else, true

# --- my sol almost there but still wrong ---
PAIR1 = 'B8'
PAIR2 = '8B'

def bears(x, s)
  array = []
  start_index = 0
  loop do
    array << s[start_index, 2]
    if s[start_index] == 'B'
      start_index += 2
    else
      start_index += 1
    end
    
    break if start_index > s.size - 2
  end
  
  mating_pair = array.select{|pair| pair == PAIR1 || pair == PAIR2}
  p [mating_pair.join, mating_pair.size >= x]
end

# --- correct sol ---

# String#scan takes Regex, return corresponding array that matches the pattern
def bears(x, s)
  mating_bears = s.scan(/8B|B8/) 
  p [mating_bears.join, mating_bears.size >= x]
end

bears(7, '8j8mBliB8gimjB8B8jlB') == ["B8B8B8",false]
bears(3, '88Bifk8hB8BB8BBBB888chl8BhBfd') == ["8BB8B8B88B",true]
bears(8, '8') == ["",false]
bears(1, 'j8BmB88B88gkBBlf8hg8888lbe88') == ["8BB88B",true]
bears(0, '8j888aam') == ["",true]
