# 7 kyu
# Remove anchor from URL
# Complete the function/method so that it returns the url with anything after 
# the anchor (#) removed.

# my first thought is to call gsub, substitute everything after # with '' 
# but there must be involved in Regex application, which Idk how to write

def remove_url_anchor(url)
  result = ''
  url.each_char do |char|
    break if char == '#'
    result << char
  end
  result
end

# --- better sol with sub ---

# String#sub returns a copy of url with changes, original url remains the same
def remove_url_anchor(url)
  url.sub( /#.*/, '' ) # /#.*/ everything after #
end

# or
# url.split('#') returns ["www.codewars.com", "about"]

def remove_url_anchor(url)
  url.split('#').first # url.split('#').shift
end

p remove_url_anchor('www.codewars.com#about')
# => 'www.codewars.com'
p remove_url_anchor("www.codewars.com/katas/?page=1#aboutme")
# => "www.codewars.com/katas/?page=1"
p remove_url_anchor('www.codewars.com?page=1') 
# => 'www.codewars.com?page=1' 

