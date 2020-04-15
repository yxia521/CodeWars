// 6 kyu
// Counting Duplicates

// Count the number of Duplicates
// Write a function that will return the count of distinct case-insensitive 
// alphabetic characters and numeric digits that occur more than once in the 
// input string. The input string can be assumed to contain only alphabets 
// (both uppercase and lowercase) and numeric digits.

// Example
// "abcde" -> 0 # no characters repeats more than once
// "aabbcde" -> 2 # 'a' and 'b'
// "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
// "indivisibility" -> 1 # 'i' occurs six times
// "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
// "aA11" -> 2 # 'a' and '1'
// "ABBA" -> 2 # 'A' and 'B' each occur twice

// input:
//   - string, letters and numbers
// output:
//   - a count of different characters occur more than once

// rules:
//   - all chars are case-insensitive

// algo:
//   - split the string, convert to an array
//   - initialize a count = 0
//   - iterate thru this array
//     - for each char
//       - if the char occurs more than once in the whole string, count + 1
//         - call match, return an array, get the length of array
//         - then remove this char, to avoid repeated count later
//       - otherwise, do nothing
//     - end the loop
//   - return count

function duplicate_count(string) {
  let count = 0;
  string.split('').forEach(char => {
    let regex = RegExp(char, 'gi');
    if ((string.match(regex) || []).length > 1) 
      count += 1;
      string = string.replace(regex, ''); // to make sure no repeated count
  })
  return count;
}


console.log(duplicate_count("")) // 0
console.log(duplicate_count("abcde")) // 0
console.log(duplicate_count("abcdeaa")) // 1
console.log(duplicate_count("abcdeaB")) // 2
console.log(duplicate_count("Indivisibilities")) // 2
