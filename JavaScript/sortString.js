// 6 kyu
// A String of Sorts

// Define a method that accepts 2 strings as parameters. The method returns the first string sorted by the second.

console.log(sortString("foos", "of")) //       => "oofs"
console.log(sortString("string", "gnirts")) // => "gnirts"
console.log(sortString("banana", "abn"))     //=> "aaabnn"
console.log(sortString("banana", "abnn"))     //=> "aaabnn"
// To elaborate, the second string defines the ordering. It is possible that in the second string characters repeat, 
// so you should remove repeating characters, leaving only the first occurrence.

// Any character in the first string that does not appear in the second string should be sorted to 
// the end of the result in original order.

// input:
//   - two strings
// output:
//   - a sorted string (first string)

// rules:
//   - sort the 1st string by 2nd
//   - 2nd string's chars can't be repeated
//   - any char in 1st doesn't in 2nd will sorted to the end of result

// algo:
//   - initialize result =  ""
//   - clean up 2nd string
//     - [...new Set()]
//   - get the clearned 2nd string
    
//   - iterate thru str2
//   - if the char matches a char in str1
//     - we get an arr by calling match, then convert this arr to str
//     - then put this str to result += 
  
//   - iterate thru str1
//     - if the char is not in the result str, add it to the end of result
  
// works for these test cases, but for all codewars cases
function sortString(str1, str2) {
  let result = '';
  str2 = [...new Set(str2)];
  
  for (let i = 0; i < str2.length; i += 1) {
    let regex = new RegExp(str2[i], 'gi');
    if (str1.includes(str2[i])) {
      result += str1.match(regex).join('');
    }
  }
  
  str1.split('').forEach(char => {
    if (!result.includes(char)) {
      result += char;
    }
  })
  
  return result;
}

// best practices are beyond my capability, below is the only sol I can understand:
function sortString(str,order) {
  let res = [];
  for (let i in order){
    while(str.includes(order[i])){
        res.push(order[i]);
        str = str.replace(order[i],'');
  }
}

  return (res.join('') + str);
}
