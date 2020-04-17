// 6kyu Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers 
// differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — 
// to check his answers, he needs a program that among the given numbers finds one that is different in evenness, 
// and return a position of this number.

// ! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

// ##Examples :

console.log(iqTest("2 4 7 8 10")); // 3, Third number is odd, while the rest of the numbers are even
console.log(iqTest("1 2 1 1"));    // 2, Second number is even, while the rest of the numbers are odd

// input:
//   - string, a list of numbers
// output:
//   - an index (real index + 1)
// algo:
//   - evens = []
//   - odds = []
//   - split them up by space, convert into array
//   - for each number
//     - convert it into number
//     - check, if it's even, push it to evens
//       - if it's odd, push it to odds
//     - end loop
//   - check the evens odds's length, if length === 1, take that number, store it a variable
//   - iterate thru again, the array
//     - if the current number is === variable's value, return it's index + 1

function iqTest(string) {
  let numbers = string.split(' ');
  let evens = [];
  let odds = [];
  numbers.forEach(num => {
    if (num % 2 === 0) evens.push(num);
    if (num % 2 !== 0) odds.push(num);
  });

  let i;
  if (evens.length === 1) {
    i = evens[0];
  } else {
    i = odds[0];
  }

  let place;
  numbers.forEach((num, idx) => {
    if (num === i) place = idx + 1;
  });
  
  return place;
}
