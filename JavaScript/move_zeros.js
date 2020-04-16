// 5 kyu
// Moving Zeros To The End

// Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.

console.log(moveZeros([false,1,0,1,2,0,1,3,"a"])) // returns [false,1,1,2,1,3,"a",0,0]

// input:
//   - array
// output:
//   - array

// algo:
//   - iterate thru the array
//     - for each el
//       - if it's not 0, filter out to store in an array
//       - if it's 0, filter out to store in an array
//     - end loop
//   - concat these two arrays and return it

// first version: passed all test cases
function moveZeros(array) {
  let nonZeros = [];
  let zeros = [];
  
  for (let i = 0; i < array.length; i++) {
    if (array[i] !== 0) {
      nonZeros.push(array[i]);
    } else {
      zeros.push(0);
    }
  }
  
  return nonZeros.concat(zeros);
}

// refactory
function moveZeros(array) {
  let nonZeros = array.filter(el => el !== 0);
  let zeros = array.filter(el => el === 0);
  return nonZeros.concat(zeros);
}
