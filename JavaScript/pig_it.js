// # 5 kyu
// # Simple Pig Latin

// # Move the first letter of each word to the end of it, then add "ay" to the 
// # end of the word. Leave punctuation marks untouched.

// # Examples
console.log(pigIt('Pig latin is cool')) // igPay atinlay siay oolcay
console.log(pigIt('Hello world !'))     // elloHay orldway !

// input:
//   - string
// output:
//   - pigged string, leave the punction marks unchanged.

// rule:
//   - only change the word that contains pure letters.
  
// algo:
//   - split up, convert the string into array
//   - initialize a changedArr [] to store final result (cuz within callback, word is mutated)
//   - iterate thru the array
//     - for each word that only contains a-z, i
//       - add a first letter to its end, then concat "ay" to the end
//   - end of loop
//   - convert the changed array to string, then return it

// my initial sol: works for all codewar cases
function pigIt(string) {
  let words = string.split(' ');
  let changedArr = [];
  
  words.forEach(word => {
    if (!word.match(/[^a-z]/ig)) {
      let arr = word.split('');
      arr = arr.concat(arr.shift());
      changedArr.push(arr.join('') + "ay");
    } else {
      changedArr.push(word);
    }
  });
  
  return changedArr.join(' ');
}

// inspired by codewars sol, shorter version for changing each word
function pigIt(string) {
  let words = string.split(' '); // no need to initialize changedArr = []
  
  return words.map(word => {
    return !word.match(/[^a-z]/ig) ? word.slice(1) + word[0] + "ay" : word;
  }).join(' ');
}
