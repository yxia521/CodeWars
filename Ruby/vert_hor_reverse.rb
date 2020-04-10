# 7 kyu
# Moves in squared strings (I)

# This kata is the first of a sequence of four about "Squared Strings".
# You are given a string of n lines, each substring being n characters long: 

# s = "abcd\nefgh\nijkl\nmnop"

# We will study some transformations of this square of strings.

# Vertical mirror: vert_mirror (or vertMirror or vert-mirror)
# vert_mirror(s) => "dcba\nhgfe\nlkji\nponm"
# Horizontal mirror: hor_mirror (or horMirror or hor-mirror)
# hor_mirror(s) => "mnop\nijkl\nefgh\nabcd"
# or printed:

# vertical mirror   |horizontal mirror   
# abcd --> dcba     |abcd --> mnop 
# efgh     hgfe     |efgh     ijkl 
# ijkl     lkji     |ijkl     efgh 
# mnop     ponm     |mnop     abcd 

# Write these two functions and a high-order function oper(fct, s) where
# fct is the function of one variable f to apply to the string s 
# (fct will be one of vertMirror, horMirror)

# reverse every char in each group, \n is the new line sign
def vert_mirror(string)
  string.split.map{|group| group.reverse}.join("\n")
end

# reverse the order of groups
def hor_mirror(string)
  string.split.reverse.join("\n")
end

def oper(fct, s) # fct is a method
  fct.call(s) # call a method with specific argument s
end

s = "abcd\nefgh\nijkl\nmnop"
p oper(method(:vert_mirror), s) == "dcba\nhgfe\nlkji\nponm" # memorize this pattern
p oper(method(:hor_mirror), s) == "mnop\nijkl\nefgh\nabcd"

p oper(method(:vert_mirror), "hSgdHQ\nHnDMao\nClNNxX\niRvxxH\nbqTVvA\nwvSyRu") == "QHdgSh\noaMDnH\nXxNNlC\nHxxvRi\nAvVTqb\nuRySvw"
p oper(method(:vert_mirror), "IzOTWE\nkkbeCM\nWuzZxM\nvDddJw\njiJyHF\nPVHfSx") == "EWTOzI\nMCebkk\nMxZzuW\nwJddDv\nFHyJij\nxSfHVP"
p oper(method(:hor_mirror), "lVHt\nJVhv\nCSbg\nyeCt") == "yeCt\nCSbg\nJVhv\nlVHt"
p oper(method(:hor_mirror), "njMK\ndbrZ\nLPKo\ncEYz") == "cEYz\nLPKo\ndbrZ\nnjMK"
