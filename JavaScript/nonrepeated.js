// 6kyu - Unique in Order

// Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

// For example:

console.log(uniqueInOrder('AAAABBBCCDAABBB')) // ['A', 'B', 'C', 'D', 'A', 'B']
console.log(uniqueInOrder('ABBCcAD'))         // ['A', 'B', 'C', 'c', 'A', 'D']
console.log(uniqueInOrder([1,2,2,3,3]))       // [1,2,3]

// input:
//   - string, arr
// output:
//   - an array, includes element, which it's subsequent letter is different 

// algo:
//   - initialize a result []
//   - iterate the the list
//     - for current el, check if it's the same as the next el
//       - if yes, same, do nothing, go to next
//       - if no, push this el to result
//     - end
//   - return result
      

function uniqueInOrder(input) {
  let result = [];
  
  for (let i = 0; i < input.length; i += 1) {
    if (input[i] !== input[i + 1]) {
      result.push(input[i]);
    }
  }
  return result;
}
