// 5 kyu
// #Hashtag
// You start working for a fancy new startup hoping to revolutionize social networking! GASP! 
// They had this great idea that users should be able to specify relevant keywords to their posts 
// using an ingenious idea by prefixing those keywords with the pound sign (#). 
// Your job is to extract those keywords so that they can be used later on for whatever purposes.

// Note:

// Pound signs alone do not count, for example: the string "#" would return an empty array.
// If a word is preceded by more than one hashtag, only the last hashtag counts 
// (e.g. "##alot" would return ["alot"])
// Hashtags cannot be within the middle of a word (e.g. "in#line hashtag" returns an empty array)
// Hashtags must precede alphabetical characters (e.g. "#120398" or "#?" are invalid)
// Input: String of words, where some words may contain a hashtag.

// Output: Array of strings that were prefixed with the hashtag, but do not contain the hashtag.

console.log(getHashtags("Hello #world"));   // ["world"]
console.log(getHashtags("#sorryNotSorry")); // ["sorryNotSorry"]
console.log(getHashtags("in#line hashtag")); // []
console.log(getHashtags("##alot")); // ["alot"]
console.log(getHashtags("#120398")); // []

// input:
//   - string
// output:
//   - array includes a string

// rules:
//   - if the # in the middle, return []
//   - repeated #, count the last #
//   - if chars after # is not letters, return []
  
// algo:
//   - split up, convert the string into array
//   - initialize result = []
//   - iterate thru the array
//     - for each word
//       - if the word includes anything that is not letters, return []
//       - otherwise
//         - if (word start with #) get the chars after # to result
//         - otherwise, do nothing
//   - end loop
//   - return the result
              
function getHashtags(string) {
  let result = [];
  string.split(' ').forEach(word => {
    if (!word.match(/[a-z]/ig)) return result;
    if (word[0] === "#") result.push((word.slice(1)).replace(/#/g, ''));
  });
  
  return result;
}
