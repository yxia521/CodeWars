// 7 kyu
// Descending Order

// Your task is to make a function that can take any non-negative integer as 
// an argument and return it with its digits in descending order. Essentially, 
// rearrange the digits to create the highest possible number.

// Examples:

console.log(descendingOrder(21445));     // 54421
console.log(descendingOrder(145263));    // 654321
console.log(descendingOrder(123456789)); // 987654321

// input:
//   - number
// output:
//   - number, largest

// algo: 
//   - convert the number into string, split up, to get an arr
//   - sort the arr, by descending order
//   - convert the arr to string, then to a number, return this number

function descendingOrder(num) {
  return Number(String(num).split('').sort((a, b) => b - a).join(''));
}
