// # 5 kyu
// # First non-repeating character
// # Write a function named first_non_repeating_letter that takes a string input, and 
// # returns the first character that is not repeated anywhere in the string.

// # For example, if given the input 'stress', the function should return 't', since 
// # the letter t only occurs once in the string, and occurs first in the string.

// # As an added challenge, upper- and lowercase letters are considered the same 
// # character, but the function should return the correct case for the initial letter. 
// # For example, the input 'sTreSS' should return 'T'.

// # If a string contains all repeating characters, it should return an empty string ("")

// input:
//   - string
// output:
//   - a single char string

// rules:
//   - find the first character that only occurs once 
  
// algo:
//   - split the string into array, iterate thru the array
//   - for each char
//     - if the current char occurs only once in the string, filter it out
//   - end the loop
//   - get an array of all elemenet occurring only once
//   - return its first element

function first_non_repeating_letter(string) {
  return string.split('').filter(char => {
    let regex = new RegExp(char, 'gi');
    return (string.match(regex) || []).length === 1;
  })[0] || "";
}

console.log(first_non_repeating_letter("stress") === "t") 
console.log(first_non_repeating_letter('sTreSS')  === "T") 
console.log(first_non_repeating_letter("aaabbb") === "") 
