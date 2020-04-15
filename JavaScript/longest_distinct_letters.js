// # 7 kyu
// # Two to One

// # Take 2 strings s1 and s2 including only letters from a to z. Return a new 
// # sorted string, the longest possible, containing distinct letters, each 
// # taken only once - coming from s1 or s2.

// input:
//   - two strings
// output:
//   - one string, including all distinct letters from these two strings

// algo:
//   - concat two strings
//   - convert this string to array
//   - for this array
//     - reassign it to a distinct array by [...new Set(array)]
//   - convert this array back to string, return it

function longest(s1, s2) {
  return [...new Set(s1 + s2)].sort().join('');
}

let a = "xyaabbbccccdefww"
let b = "xxxxyyyyabklmopq"
console.log(longest(a, b) === "abcdefklmopqwxy");

let c = "abcdefghijklmnopqrstuvwxyz"
console.log(longest(c, c) === "abcdefghijklmnopqrstuvwxyz");

// what I learn:
// [...new Set()] can take either string or array, don't have to convert s to array first...
