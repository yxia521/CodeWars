// # 6 kyu
// # Alphabetized
// # The alphabetized kata
// # Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

// # The input is restricted to contain no numerals and only words containing the english alphabet letters.

// # delete everything excpet letters
// # sort the array, use downcase to do case-insensitiveness

// input:
//   - string, only includes letters, spaces
// output:
//   - string without anything but letters
  
// rules:
//   - sort all letters in alphabetical order
//   - case-insensitive

// algo:
//   - remove all spaces from the string, clear up the string
//   - convert it to array, sort this array
//   - for this sorted array
//     - if a.toLowerCase() > b.toLowerCase() return 1
//     - if a < b return -1
//     - return 0;
//   - join the array with ''

function alphabetized(string) {
  let sortedArr = string.replace(/\s/g, '').split('').sort();
  return sortedArr.sort((a, b) => {
    if (a.toLowerCase() > b.toLowerCase()) return 1; // tricky part, use the original way of sort, the compact version won't work!
    if (a.toLowerCase() < b.toLowerCase()) return -1;
    return 0;
  }).join('');
}

console.log(alphabetized("The Holy Bible") === "BbeeHhilloTy");
