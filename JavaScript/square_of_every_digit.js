// 7 kyu
// Square Every Digit

// Welcome. In this kata, you are asked to square every digit of a number.
// For example, if we run 9119 through the function, 811181 will come out, 
// because 9**2 is 81 and 1**2 is 1.

// Note: The function accepts an integer and returns an integer

// input:
//   - integer
// output:
//   - integer, simply the concatenation of every squared digit

// algo:
//   - seperate every digit  
//     - convert to string, split digits, get an array of all digits
//   - for each digit, square it
//   - concat all elements of the array, get a final string result
//   - convert this string result to number

console.log(squareDigits(9119) === 811181);  

function squareDigits(integer) {
  let allDigits = String(integer).split('');
  let squaredDigits = allDigits.map(digit => Math.pow(Number(digit), 2));
  
  return Number(squaredDigits.reduce((result, num) => result + String(num), ''));
}
