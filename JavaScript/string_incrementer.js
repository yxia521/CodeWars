// # 5 kyu
// # String incrementer

// # Your job is to write a function which increments a string, to create a new string.
// # If the string already ends with a number, the number should be incremented by 1.
// # If the string does not end with a number. the number 1 should be appended to the new string.
// # Attention: If the number has leading zeros the amount of digits should be considered.

// input:
//   - string
// output:
//   - a new string, ending with a number
// rules:
//   - if the string is not ended with 0-9, add a "1" to it

// algo:
//   - check if the string containing any numbers
//   - if no, concat a "1" to the end of it, return it
//   - if yes, convert the string to array
//     - filter out those string that are numbers
//     - concat them togther
//     - convert them into numbers
//     - do the math, + 1
//     - convert the number back to string, 
//     - combine the letter part with this number part
//   - return the final result

function stringIncrement(string) {
  if (!string.match(/[0-9]/g)) return string + "1";
  
  let allChars = string.split('');
  let allNums = allChars.filter(char => char.match(/[0-9]/g)).join(''); // "0042", "099"
  let number = Number(allNums) + 1; // 43, 100

  let numPart = String(number); // tricky part
  if (allNums.length !== String(number).length) {
    numPart = String(number).padStart(allNums.length, "0");
  }
  
  let letterPart = (allChars.filter(char => char.match(/[a-z]/ig))).join('');
  return letterPart + numPart;
}

console.log(stringIncrement("foo")) // "foo1"
console.log(stringIncrement("foobar23")) // "foobar24"
console.log(stringIncrement("foo0042")) // "foo0043"
console.log(stringIncrement("foo9")) // "foo10"
console.log(stringIncrement("foo099")) // "foo100"
console.log(stringIncrement("")) // "1"
