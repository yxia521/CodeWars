// 6 kyu
// Array.diff
// delete the element in a that is also in b, return the deleted a

// array_diff([1,2],[1]) == [2]
// If a value is present in b, all of its occurrences must be removed from the other:
// array_diff([1,2,2,2,3],[2]) //  [1,3]

// input:
//   - array a, array b
// output:
//   - a deleted array a

// rules:
//   - mutate the array a, return it
//   - delete all repeat numbers, no matter what's occurences

// algo:
//   - iterate thru the array a
//     - for each number
//       - if it appears in the array b, remove it
//       - otherwise, do nothing
//     - end the loop
//   - return the mutated array a

function array_diff(arr1, arr2) {
  arr1 = arr1.filter(num => !arr2.includes(num)); // reassign cuz we need to mutate the array a
  return arr1;
}

console.log(array_diff([1,2],[1])) // [2]
console.log(array_diff([1,2,2,2,3],[2])) // [1,3]
console.log(array_diff([1,2,2], [1])) // [2,2]
console.log(array_diff([1,2,2], [2])) // [1]
console.log(array_diff([1,2,2], [])) // [1,2,2]
console.log(array_diff([], [1,2])) // []
