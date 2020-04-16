// 5 kyu
// Largest product in a series

// Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.
// The input string always has more than five digits.
// Adapted from Project Euler.

// For example:

console.log(greatestProduct("123834539327238239583"));               // 3240
console.log(greatestProduct("92494737828244222221111111532909999")); // 5292
console.log(greatestProduct("02494037820244202221011110532909999")); // 0

// input:
//   - string only includes digits
// output:
//   - a product of 5 consecutive digits

// algo:
//   - split the string up, convert it into array
//   - initialize result = [];
//   - iterate thru the array 
//     - for each string digit
//       - convert it to number, then get the product of itself and the following 4 digits
//       - push this product to an array result
//     - end
//   - return the max number of result
  
function greatestProduct(string) {
  let digits = string.split('');
  let result = [];
  
  for (let idx = 0; idx < digits.length - 4; idx++) {
    let product = Number(digits[idx]) * Number(digits[idx + 1]) * Number(digits[idx + 2]) * Number(digits[idx + 3]) * Number(digits[idx + 4]);
    result.push(product);
  }
  
  return result.sort((a, b) => a - b).pop();
}
  
