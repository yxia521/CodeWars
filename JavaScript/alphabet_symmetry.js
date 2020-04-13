// 7 kyu
// Alphabet symmetry

// Consider the word "abode". We can see that the letter a is in position 1 and b 
// is in position 2. In the alphabet, a and b are also in positions 1 and 2. 
// Notice also that d and e in "abode" occupy the positions they would occupy in 
// the alphabet, which are positions 4 and 5.

// Given an array of words, return an array of the number of letters that occupy 
// their positions in the alphabet for each word.
// Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

// input:
//   - an array of words
// output:
//   - an array of the number of letters
  
// algo:
//   - initialize an array which containing letters from ["a"..."z"]
//   - initialize an array count = [];
//   - iterate thru the array
//     - for each word, iterate thru the chars
//       - for each character, check its position: index + 1
//       - compare this position with the one in the letters array, 
//         - if equal, the count + 1
//         - otherwise, do nothing
//       - end loop
//     - end loop
//   - return the count array

const LETTERS = Array.from({ length: 26 }, (_, i) => String.fromCharCode('a'.charCodeAt(0) + i));

function symmetry_letters(array) {
  let result = [];
  
  array.map(word=> {
    let count = 0;
    
    word.split('').forEach((char, idx) => {
      let position = idx + 1;
      if (position === (LETTERS.indexOf(char.toLowerCase()) + 1)) count += 1;
    });
    
    result.push(count);
  });
  
  return result;
}

console.log(symmetry_letters(["abode","ABc","xyzD"])) // [4, 3, 1]
