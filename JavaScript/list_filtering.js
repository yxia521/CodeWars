// 7 kyu
// List Filtering

// In this kata you will create a function that takes a list of non-negative 
// integers and strings and returns a new list with the strings filtered out.

// Example
console.log(filter_list([1,2,'a','b']));              // [ 1, 2 ]
console.log(filter_list([1,'a','b',0,15]));           // [ 1, 0, 15 ]
console.log(filter_list([1,2,'aasf','1','123',123])); // [ 1, 2, 123 ]

// input:
//   - array, containing integers and strings
// output:
//   - new array, only containing integers
  
// algo
//   - iterate thru the array
//     - if the current element is number, take it out to a new array
//   - return this new array

function filter_list(array) {
  return array.filter(el => typeof el === 'number');
}
