// # 5 kyu
// # Scramblies

// # Complete the function scramble(str1, str2) that returns true if a portion of 
// # str1 characters can be rearranged to match str2, otherwise returns false.
// # Notes:
// # Only lower case letters will be used (a-z). No punctuation or digits will be 
// # included. Performance needs to be considered
// Input strings s1 and s2 are null terminated.

// input:
//   - str1, str2
// output:
//   - true / false

// algo:
//   - iterate thru the string 1 char by char
//   - for each char
//     - check if it has a match in str2
//       - if yes, remove that char in str2
//       - if no, go next char
//   - end the loop
//   - if there's any char left in str2, means it's not match, return false
//   - otherwise return true
  
function scramble(str1, str2) {
  for (let idx = 0; idx < str1.length; idx++) {
    if (str2.includes(str1[idx])) {
      let regex = new RegExp(str1[idx]);
      str2 = str2.replace(regex, '');
    }
  }
  
  return str2.length === 0;
}

console.log(scramble('rkqodlw', 'world')) // true
console.log(scramble('cedewaraaossoqqyt', 'codewars')) // true
console.log(scramble('katas', 'steak')) // false
console.log(scramble("javscripts", "javascript")) // false  
console.log(scramble("scriptingjava", "javascript")) // true
