//Given a list of integers and a single sum value, return the first two values (parse from the left please) 
// in order of appearance that add up to form the sum.
// i.e. return the pair that 1) the sum of two = sum; 2) closest to each other in the original array

console.log(sum_pairs([11, 3, 7, 5], 10)) // [3, 7]
// #              ^--^      3 + 7 = 10

console.log(sum_pairs([4, 3, 2, 3, 4], 6)) // [4, 2]
// #                   ^-----^         4 + 2 = 6, indices: 0, 2 *
// #                      ^-----^      3 + 3 = 6, indices: 1, 3
// #                         ^-----^   2 + 4 = 6, indices: 2, 4
// #  * entire pair is earlier, and therefore is the correct answer



console.log(sum_pairs([0, 0, -2, 3], 2)) // []
// #  there are no pairs of values that can be added to produce 2.

console.log(sum_pairs([10, 5, 2, 3, 7, 5], 10)); // [3, 7]
// #                       ^-----------^   5 + 5 = 10, indices: 1, 5
// #                             ^--^      3 + 7 = 10, indices: 3, 4 *
// #  entire pair is earlier, and therefore is the correct answer

// input:
//   - array, a sum number
// output:
//   - array, includes two numbers
//   - the sum of this two numbers  === second argu

// rules:
//   - must return the pair, which two numbers' index difference (distance) is smallest.
//   - if there's no such pair return false

// algo:
//   - iterate thru the arr in a way that fix the distance
//   - for each distance (start from 1, 2, ..., < arr.length)
//     - check the sum of two numbers
//       - if equal to sum, return this two numbers 
//       (since distance is increasing from smallest, the first pair satisfying the condition should be the answer)
//   - end loop
//   - return final result
  
// This 2nd try works!
function sum_pairs(arr, sum) {
  let result = [];
  for (let distance = 1; distance < arr.length; distance++) {
    for (let startIdx = 0; startIdx < arr.length; startIdx++) {
      if (arr[startIdx] + arr[startIdx + distance] === sum) {
        result.push(arr[startIdx], arr[startIdx + distance]);
        break;
      }
    }
  }
  return result.slice(0,2);
}
