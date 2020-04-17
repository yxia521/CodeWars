// 5 kyu
// Best travel

// John and Mary want to travel between a few towns A, B, C ... Mary has on a sheet of 
// paper a list of distances between these towns. ls = [50, 55, 57, 58, 60]. 
// John is tired of driving and he says to Mary that he doesn't want to drive more than 
// t = 174 miles and he will visit only 3 towns.

// Which distances, hence which towns, they will choose so that the sum of the distances 
// is the biggest possible to please Mary and John?

// Example:

// With list ls and 3 towns to visit they can make a choice between: 
// [50,55,57],[50,55,58],[50,55,60],[50,57,58],[50,57,60],[50,58,60],[55,57,58],[55,57,60],[55,58,60],[57,58,60].

// The sums of distances are then: 162, 163, 165, 165, 167, 168, 170, 172, 173, 175.

// The biggest possible sum taking a limit of 174 into account is then 173 and the distances 
// of the 3 corresponding towns is [55, 58, 60].

// The function chooseBestSum will take as parameters t (maximum sum of distances, integer >= 0), 
// k (number of towns to visit, k >= 1) and ls (list of distances, all distances are positive or null 
// integers and this list has at least one element). The function returns the "best" sum, 
// ie the biggest possible sum of k distances less than or equal to the given limit t, 
// if that sum exists, or otherwise null

// Examples:
let ls = [50, 55, 57, 58, 60];
console.log(chooseBestSum(174, 3, ls)); // 173

let ts = [50, 55, 56, 57, 58];
console.log(chooseBestSum(163, 3, ts)); // 163

let xs = [50]; 
console.log(chooseBestSum(163, 3, xs)); // null 

let ys = [91, 74, 73, 85, 73, 81, 87]; 
console.log(chooseBestSum(230, 3, ys)); // 228

// input:
//   - the max sum to please Mary
//   - the numbers of town
//   - list of distance
// output:
//   - the sum of distance from 3 towns, that is the closest to the max sum
//   - if no such result, return null

// algo:
//   - initialize result = []
//   - iteratet thru the distance list
//   - for first number, start from index 0, increment by 1
//     - for second number, start from the first + 1, increment by 1
//       - for 3rd number, start from the second + 1, iterate thru the rest of numbers 
//         - get the sum of them, push this sum to result
//         - increment by 1
//       - end loop
//     - end loop
//   - end loop
  
//   - iterate thru the result, compare each with the first argument, 
//     - if it is not greater than the first argument && closest to the first argument, return it
//     - if no such number, return null

// haven't passed all test cases. towns is not a constant 3, so is the number of loops
// my code only works for 3 towns
// it's crazy if keep writing towns times of looping, recursive method should be used I guess
function chooseBestSum(maxSum, towns, dis) {
  let result = [];
  // trick part
  for (let first = 0; first < dis.length; first++) {
    for (let second = first + 1; second < dis.length; second++) {
      for (let third = second + 1; third < dis.length; third++) {
        let sum = dis[first] + dis[second] + dis[third];
        result.push(sum);
      }
    }
  }
  
  return result.length === 0 ? null: Math.max(...result.filter(num => num <= maxSum));
}

// codewars' best practice, this question has been beyond my capability
function chooseBestSum(t, k, ls) {
  var biggestCount = 0;
  var recurseTowns = function(townsSoFar, lastIndex) {
    townsSoFar = townsSoFar || [];
    //base case
    if (townsSoFar.length === k) {
      var sumDistance = townsSoFar.reduce((a,b)=>a+b);
      if (sumDistance <= t && sumDistance > biggestCount) {
        biggestCount = sumDistance;
      }      
      return; //EJECT
    }
    //recursive case
    for (var i = lastIndex + 1 || 0; i < ls.length; i++) {
      recurseTowns(townsSoFar.concat(ls[i]), i);
    }
  }
  recurseTowns();
  
  return biggestCount || null;
}
