// 6 kyu
// Equal Sides Of An Array

// You are going to be given an array of integers. Your job is to take that array and 
// find an index N where the sum of the integers to the left of N is equal to the sum of the 
// integers to the right of N. If there is no index that would make this happen, return -1.

function findEvenIndex(array) {
  const sum = (accu, num) => accu + num;
  
  for (let idx = 0; idx < array.length; idx++) {
    let leftSum = 0;
    let rightSum = 0;
    
    if (idx === 0) rightSum = array.slice(1).reduce(sum, 0);
    leftSum = array.slice(0, idx).reduce(sum, 0);
    rightSum = array.slice(idx + 1).reduce(sum, 0);
    
    if (rightSum === leftSum) return idx;
  }
  
  return -1;
}

console.log(findEvenIndex([1, 2, 3, 4, 3, 2, 1])) //== 3 # 4's index is 3
console.log(findEvenIndex([1, 100, 50, -51, 1, 1])) //== 1 # 100's index is 1
console.log(findEvenIndex([20, 10, -80, 10, 10, 15, 35])) //== 0 # 20's index is 0
console.log(findEvenIndex([1, 2, 3, 4, 5, 6])) //== -1 # no such number
console.log(findEvenIndex([20, 10, 30, 10, 10, 15, 35])) //== 3
