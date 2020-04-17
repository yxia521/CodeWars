// 4 kyu
// Sum Strings as Numbers

// Given the string representations of two integers, return the string representation of the sum of those integers.

// For example:

console.log(sumStrings('1','2'));     // '3'
console.log(sumStrings('123','456')); // '579'
console.log(sumStrings('712569312664357328695151392', '8100824045303269669937')); // 712577413488402631964821329
// A string representation of an integer will contain no characters besides the ten numerals "0" to "9".

// input:
//   - two number strings
// output:
//   - a number string
  
// algo:
//   - for these two inputs
//     - convert them into numbers
//     - do the math, sum
//     - convert this sum back to string
//   - return result

function sumStrings(str1, str2) {
  return (BigInt(str1) + BigInt(str2)).toLocaleString('fullwide', {useGrouping:false});
}
