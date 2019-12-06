# 6 kyu
# Build Tower by the following given argument:
# number of floors (integer and always greater than 0).
# Tower block is represented as * 
# Ruby: returns an Array;

# for example, a tower of 3 floors looks like below
# [
#   '  *  ', 
#   ' *** ', 
#   '*****'
# ]
  
# and a tower of 6 floors looks like below
# [
#   '     *     ', 
#   '    ***    ', 
#   '   *****   ', 
#   '  *******  ', 
#   ' ********* ', 
#   '***********'
# ]

def tower(n)
  star = '*'
  tower = []
  1.step(2*n-1, 2) do |star_size|
    tower << (star * star_size).center(2*n - 1)
  end
  puts tower
end

tower(1)
tower(2)
tower(3)
tower(6)

