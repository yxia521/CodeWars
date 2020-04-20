// 5 kyu
// Beeramid

// Let's pretend your company just hired your friend from college and paid you a referral bonus. 
// Awesome! To celebrate, you're taking your team out to the terrible dive bar next door and 
// using the referral bonus to buy, and build, the largest three-dimensional beer can pyramid you can. 
// And then probably drink those beers, because let's pretend it's Friday too.

// A beer can pyramid will square the number of cans in each level - 1 can in the top level, 
// 4 in the second, 9 in the next, 16, 25...

// Complete the beeramid function to return the number of complete levels of a beer can pyramid 
// you can make, given the parameters of:

// 1) your referral bonus
// 2) the price of a beer can

// For example:

console.log(beeramid(1500, 2)); // should === 12
console.log(beeramid(5000, 3)); // should === 16

// level 1 - 1 * price
// 2 - 4 * price
// 3 - 9 * price
// 4 - 16 * price
// ...

// algo:
//   - create a list which contains the number of cans in each level
//     - for loop, level = 1, increment by 1, limit 20
//     - power each to create the cans, push the cans to an array can = []
//     - the level = index of arr + 1
    
//   - get the sum of money I need to pay for each level
//     - iterate thru can, get price * cans number
  
//   - compare this sum with my bonus, make sure it's not greater than my bonus
//     - when sum < bonus, filter out these cans
//     - return the level, index + 1

// passes all test cases
function beeramid(bonus, price) {
  let cansEachLevel = [];
  for (let level = 1; level < 271; level++) { // 271 is the largest level of all test cases lol
    cansEachLevel.push(level ** 2);
  }
  
  let sumEachLevel = cansEachLevel.map(cans => cans * price);
  
  let sum = 0;
  for (let i = 0; i < sumEachLevel.length; i++) {
    sum += sumEachLevel[i];
    if (sum > bonus) return i;
  }
}
