# 6 kyu
# Permutations Of An Array And Associated Values
# The special score(ssc) of an array of integers will be the sum of each integer 
# multiplied by its corresponding index plus one in the array.

# E.g.: with the array [6, 12, -1]

# arr =   [6,      12,       -1 ]
# ssc =   1*6  +  2* 12 +  3.(*1) = 6 + 24 - 3 = 27
# The array given in the example has six(6) permutations and are with the 
# corresponding ssc:

# Permutations      Special Score (ssc)
# [6, 12, -1]      1*6 + 2*12 + 3*(-1) = 27
# [6, -1, 12]       1*6 + 2*(-1) + 3*12 = 40
# [-1, 6, 12]       1*(-1) + 2*6 + 3*12 = 47
# [-1, 12, 6]       1*(-1) + 2*12 + 3*6 = 41
# [12, -1, 6]       1*12 + 2*(-1) + 3*6 = 28
# [12, 6, -1]       1*12 + 2*6 + 3*(-1) = 21
# The total sum of the ssc's of all the possible permutations is: 
# 27 + 40 + 47 + 41 + 28 + 21 = 204

# The maximum value for the ssc is 47.
# The minimum value for the ssc is 21.

# output is an array, containing some hashes.
# Also you will never receive an array with the same element in all the 
# positions like [1, 1, 1, 1 ,1], but you may have elements occuring twice 
# or more like [1, 1, 1, 2, 3]

# --- my code works but run out of time ---

def ssc_forperm(numbers)
  total_perm = numbers.permutation.to_a.uniq
  
  ssc = total_perm.map do |perm| 
    perm.each_with_index.map{|i, index| i * (index+1)}.sum
  end
  total_ssc = ssc.sum
  max_ssc = ssc.max
  min_ssc = ssc.min
  
  perm = {}
  perm["total perm"] = total_perm.size
  ssc = {}
  ssc["total ssc"] = total_ssc
  max = {}
  max["max ssc"] = max_ssc
  min ={}
  min["min ssc"] = min_ssc
  p [perm, ssc, max, min]
end

def ssc_forperm(numbers)
  total_perm = numbers.permutation.to_a.uniq
  
  ssc = total_perm.map do |perm| 
    perm.each_with_index.map{|i, index| i * (index+1)}.sum
  end
  [{"total perm"=>total_perm.size}, {"total ssc"=>ssc.sum}, {"max ssc"=>ssc.max}, {"min ssc"=>ssc.min}]
end

ssc_forperm([6, 12, -1]) == [{"total perm"=>6}, 
{"total ssc"=>204}, {"max ssc"=>47}, {"min ssc"=>21}]
ssc_forperm([4, 25, 5, 11, 4]) == [{"total perm"=>60}, {"total ssc"=>8820}, {"max ssc"=>196}, {"min ssc"=>98}]
