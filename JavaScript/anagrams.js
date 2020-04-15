// 5 kyu
// Where my anagrams at?
// What is an anagram? Well, two words are anagrams of each other if 
// they both contain the same letters. For example:

// 'abba' & 'baab' == true

// 'abba' & 'bbaa' == true

// 'abba' & 'abbba' == false

// 'abba' & 'abca' == false

// Write a function that will find all the anagrams of a word from a list. 
// You will be given two inputs a word and an array with words. You should 
// return an array of all the anagrams or an empty array if there are none. 

// input:
//   - a word, an array
// output:
//   - an array including all the anagrams

// problem:
//   - function that determine if two words are anagrams
//   - function check if a given two are matched as each other's anagram

// algo:
//   - function isAnagrams()
//     - check if two words are anagrams
//       - sort both of them
//       - compare the sorted array
//         - if equal, then true
//         - otherwise, false, not anagrams
//   - return a true/false

//   - function anagrams()
//     - iterate thru the array
//       - for each word
//         - compare the current word with 1st argument
//         - if true, pick this current word
//         - otherwise, don't pick
//     - return the array of anagrams
    
function isAnagrams(word1, word2) {
  return word1.split('').sort().join('') === word2.split('').sort().join('');
}
  
function anagrams(word, array) {
  return array.filter(el => isAnagrams(word, el));
}

console.log(anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])) // ['aabb', 'bbaa']
console.log(anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer'])) // ['carer', 'racer']
console.log(anagrams('laser', ['lazing', 'lazy',  'lacer'])) // []

// Thougths:
// Initially, in function isAnagrams, I didn't convert the array back to string (no join), 
// which result in word1.split('').sort() will forever not equal to word2.split('').sort(), even if  
// they happen to have the same array value, they are two diffrent objects(i.e. occupy difference 
// space in memory)
