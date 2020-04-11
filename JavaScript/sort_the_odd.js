// 6 kyu
// Sort the odd

// You have an array of numbers.
// Your task is to sort ascending odd numbers but even numbers must be on their places.

// Zero isn't an odd number and you don't need to move it. If you have an empty array, 
// you need to return it.

// Example

console.log(sortArray([5, 3, 2, 8, 1, 4])) // [1, 3, 2, 8, 5, 4])
console.log(sortArray([5, 3, 1, 8, 0])) // [1, 3, 5, 8, 0]
console.log(sortArray([])) // []

// input:
//   - array
// output:
//   - array
// rules:
//   - sort the array only by odd number
//   - for even numbers, leave them in the original places

// algo:
//   - iterate thru the array
//     - filter out all odd numbers
//     - sort these odd numbers
//   - back to iterate thru the original array
//     - if the number is odd, shift the first number of odd
//     - if the number is even, do nothing
//   - return the result

function sortArray(array) {
  let odd = array.filter(el => el % 2 !== 0).sort(); // [1, 3, 5]
  return array.map(num => num % 2 !== 0 ? odd.shift() : num);
}
