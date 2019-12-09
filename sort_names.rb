# 6 kyu
# Meeting
# John has invited some friends. His list is:

# s = "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill";
# Could you make a program that

# makes this string uppercase;
# gives it sorted in alphabetical order by last name.
# When the last names are the same, sort them by first name. output: (Last name, first name)

# So the result of function meeting(s) will be:

# "(CORWILL, ALFRED)(CORWILL, FRED)(CORWILL, RAPHAEL)(CORWILL, WILFRED)(TORNBULL, BARNEY)(TORNBULL, BETTY)(TORNBULL, BJON)"
# It can happen that in two distinct families with the same family name two people have the same first name too.

# split the list by ;
# sort by each of the group's last element
#   - if the last element the same, sort by first element
# end
# return output

def meeting(s)
  list = s.split(";").map{|person| person.split(":")}
  result = list.sort_by{|first, last| [last, first]} # at first sort by last name, if they're the same, then by first name
  p result
  result.map{|first, last| "(#{last.upcase}, #{first.upcase})"}.join
end
  
meeting("Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill") \
== "(CORWILL, ALFRED)(CORWILL, FRED)(CORWILL, RAPHAEL)(CORWILL, WILFRED)(TORNBULL, BARNEY)(TORNBULL, BETTY)(TORNBULL, BJON)"
