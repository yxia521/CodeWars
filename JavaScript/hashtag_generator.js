// # 5 kyu (very good question)
// # The Hashtag Generator

// # The marketing team is spending way too much time typing in hashtags.
// # Let's help them with our own Hashtag Generator!

// # Here's the deal:

// # It must start with a hashtag (#).
// # All words must have their first letter capitalized.
// # If the final result is longer than 140 chars it must return false.
// # If the input or the result is an empty string it must return false.
    
// # Examples
// # " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
// # "    Hello     World   "                  =>  "#HelloWorld"
// # ""                                        =>  false
  
// input:
//   - string
// output:
//   - string, always start with a #
//   - for every word, capitalize the first character
  
// algo:
//   - first clean up the string
//     - remove all consecutive spaces into one single space
//   - split by space, convert the string into array
//   - iterate thru the array
//     - for each word
//       - capitalize the first character
//   - end the loop
//   - join this array, convert it into string
//   - shift a # at the begining of the string
//   - return the final result

function hashtag_generator(string) {
  string = string.replace(/\s+/g, ' ');
  if (!string || string === " ") return false;
  
  let result = [];
  string.split(' ').forEach(word => {  
    if (word) result.push(word[0].toUpperCase() + word.slice(1).toLowerCase()); // tricky part: if statement to exclude the case "" in the array
  });
  
  result.unshift("#"); // note unshift is mutating method, returns a number - new length, that's why one-line result.unshift("#").join('') raise an error
  return result.join('');
}

// shorter version for the callback of forEach, no need to initialize a result = []
function hashtag_generator(string) {
  string = string.replace(/\s+/g, ' ');
  if (!string || string === " ") return false;

  let result = string.split(' ').map(word => word ? word[0].toUpperCase() + word.slice(1).toLowerCase() : '');

  result.unshift("#");
  return result.join('');
}
  
console.log(hashtag_generator(" Hello there thanks for trying my Kata")); // "#HelloThereThanksForTryingMyKata"
console.log(hashtag_generator("    Hello     World   ")); //  "#HelloWorld"
console.log(hashtag_generator(""));                       // false 
console.log(hashtag_generator("       "));                // false
console.log(hashtag_generator("code" + "            " + "wars")); // "#CodeWars"
