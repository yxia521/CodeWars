// # 7 kyu
// # GCD sum
// # Given the sum and gcd of two numbers, return those two numbers in ascending 
// # order. If the numbers do not exist, return -1. These two numbers can be equal

// # For example: 
// # Given sum = 12 and gcd = 4...

// # solve(12,4) = [4,8]. The two numbers 4 and 8 sum to 12 and have a gcd of 4.

// # solve(12,5) = -1. No two numbers exist that sum to 12 and have gcd of 5.

// # solve(10,2) = [2,8]. Note that [4,6] is also a possibility but we pick the one with the lower first element: 2 < 4, so we take [2,8].

// input:
//   - two numbers
// output:
//   - an array of these two numbers in ascending order
  
// rules:
//   - Greatest Common Divisor: the largest number that divides both of them

// algo:
//   - initialize an array result
//   - create a loop, multiplier starting from 1
//     - product = gcd times multiplier
//     - check if this (product + gcd) === the sum
//       - if no, return -1
//       - if yes, push the gcd, prodcut to result
//   - return this result 

function sum_gcd(sum, gcd) {
  let result = [];
  for (let multiplier = 1; multiplier < sum; multiplier++) {
    let product = gcd * multiplier;
    if (product + gcd === sum) result.push(gcd, product);
  }
  if (result === []) return -1;
  return result;
}

console.log(sum_gcd(12,4)) // [4,8]
console.log(sum_gcd(12,5)) // -1
console.log(sum_gcd(10,2)) // [2,8]
console.log(sum_gcd(6,3))  // [3, 3]
