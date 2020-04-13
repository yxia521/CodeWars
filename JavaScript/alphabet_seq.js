// # 7 kyu
// # Alphabetical Sequence
// # In this kata you will be given a random string of letters and tasked with 
// # returning them as a string of comma-separated sequences sorted alphabetcally, 
// # with each sequence starting with an uppercase character followed by n-1 
// # lowercase characters, where n is the letter's alphabet position 1-26.

// # Technical Details
// # The string will include only letters.
// # The first letter of each sequence is uppercase followed by n-1 lowercase.
// # Each sequence is seperated with a comma.
// # Return value needs to be a string.

// input:
//   - string only letters
// output:
//   - string, each word seperated by comma

// rules:
//   - n is the position of letter in alphabet
//   - first one Uppercase, (n - 1) lowercase
  
// algo:
//   - initialize an array ["a"..."z"]
//   - lowercase the string, and then sort all chars from a - z
//   - split up the string, convert it to an array, iterate thru it
//     - for each char
//       - n: array'index + 1
//       - repeat this char n times
//       - uppercase the first char
//     - end
//   - join the array by ','

const LETTERS = Array.from({length: 26}, (_, i) => String.fromCharCode('a'.charCodeAt(0) + i));

function alphaSeq(string) {
  let sortedArr = string.toLowerCase().split('').sort();
  
  return sortedArr.map(char => {
    let word = char.repeat(LETTERS.indexOf(char) + 1);
    return word[0].toUpperCase() + word.slice(1);
  }).join(',');
}

console.log(alphaSeq("ZpglnRxqenU") === "Eeeee,Ggggggg,Llllllllllll,Nnnnnnnnnnnnnn,Nnnnnnnnnnnnnn,Pppppppppppppppp,Qqqqqqqqqqqqqqqqq,Rrrrrrrrrrrrrrrrrr,Uuuuuuuuuuuuuuuuuuuuu,Xxxxxxxxxxxxxxxxxxxxxxxx,Zzzzzzzzzzzzzzzzzzzzzzzzzz")
