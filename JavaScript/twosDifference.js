// 6 kyu
// Difference of 2

// The objective is to return all pairs of integers from a given collection of integers that have a difference of 2.

// The result should be sorted in ascending order.

// The input will consist of unique values. The order of the integers in the input collection should not matter.

// Examples
console.log(twosDifference([1, 2, 3, 4]));     // [[1, 3], [2, 4]]
console.log(twosDifference([4, 1, 2, 3]));   //  [[1, 3], [2, 4]]
console.log(twosDifference([1, 23, 3, 4, 7]));  //  [[1, 3]]
console.log(twosDifference([4, 3, 1, 5, 6]));  // [[1, 3], [3, 5], [4, 6]]

// input:
//   - array
// output:
//   - a nested array
//   - each subarray is two numbers that their difference is 2

// algo:
//   - initialize a result = []
//   - go thru the array, find all pair of any two numbers
//     - for loop, index = 0, i++
//       - for each iteration, push the two numbers as an arr to a result
  
//   - filter out these pair, whose difference is 2
//     - allpairs.filter()

//   - for each pair, sort them in ascending order
//     - iterate thru allpairs
//       - for each subarr, sort numbers in ascending order
  
//   - return the result

function twosDifference(input){
  let sortedArr = input.sort((a, b) => a - b);
  let allPairs = [];
  
  for (let startIdx = 0; startIdx < sortedArr.length; startIdx += 1) {
    for (let endIdx = startIdx + 1; endIdx < sortedArr.length; endIdx += 1) {
      allPairs.push([sortedArr[startIdx], sortedArr[endIdx]]);
    }
  }
  
  return allPairs.filter(pair => Math.abs(pair[0] - pair[1]) === 2);
}
