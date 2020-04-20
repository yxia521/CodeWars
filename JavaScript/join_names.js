// 6kyu - Format a string of names like 'Bart, Lisa & Maggie'.

// Given: an array containing hashes of names

// Return: a string formatted as a list of names separated by commas except for the last two names, 
// which should be separated by an ampersand.

console.log(list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]));
// returns 'Bart, Lisa & Maggie'

console.log(list([ {name: 'Bart'}, {name: 'Lisa'} ]));
// returns 'Bart & Lisa'

console.log(list([ {name: 'Bart'} ]));
// returns 'Bart'

console.log(list([]));
// returns ''

// input:
//   - array, includes objects
// output:
//   - string of names, 
//     - if array is empty, empty str

// algo:
//   - find out all names in the array
  
//   - for any names array length > 2, for the first - array.length - 1 names, join them by comma
//     - add a &, add the last name
      
//   - for any names array length = 2, join them by &
  
//   - for < 2, do nothing, return the name as string

function list(arr) {
  let names = arr.map(obj => obj['name']);
  let result = '';

  if (names.length > 2) {
    result = names.slice(0, names.length - 1).join(', ') + ' & ' + names.slice(-1);
  } else if (names.length === 2) {
    result = names.join(' & ');
  } else if (names.length === 1) {
    return names[0];
  } 
  
  return result;
}
