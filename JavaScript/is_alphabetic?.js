// # 7 kyu
// # Alphabetically ordered
// # Your task is very simple. Just write a function isAlphabetic(s), which takes an input string s in lowercase and returns true/false depending on whether the string is in alphabetical order or not.

// # For example, isAlphabetic('kata') is False as 'a' comes after 'k', but isAlphabetic('ant') is True.

// input:
//   - string
// output:
//   - true/false

// algo:
//   - split everything up, convert the string into array
//   - sort the array in alphabetic order
//   - compare this sorted array with the original array (wrong algo, should compare string)
//     - if equal, true
//     - otherwise, false

// tricky part: what should we actually compare?
// We can't compare the array, because they are two different arrays, occupy difference space
// in memory. They just happen to have the same array value.
// What we should compare is string, cuz if two primitive values are the same, they must occupy the 
// same space in memory, indeed they must be one string, a string is of course equal to itself.

function isAlphabetic(string) {
  let sortedArr = string.split('').sort();
  return string === sortedArr.join(''); 
}
  
console.log(isAlphabetic('kata')) // false
console.log(isAlphabetic('ant')) // true
console.log(isAlphabetic('asd')) // false
console.log(isAlphabetic('codewars')) // false
