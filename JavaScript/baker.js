// 5 kyu
// Pete, the baker

// Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. 
// Can you help him to find out, how many cakes he could bake considering his recipes?

// Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns 
// the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts 
// (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, 
// can be considered as 0.

// Examples:

// must return 2
console.log(cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200})); 
// must return 0
console.log(cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000}));

// input:
//   - object 1: recipe
//   - object 2: ingredient
// output:
//   - a number

// algo:
//   - initialize result = []
//   - iterate thru the object recipe
//   - for each key
//     - find if there's corresponding key in the ingredient
//       - if yes, use the Math.floor(ingredient's value / recipe value), push the value to result
//       - if no, push 0 to result
//   - end the loop
//   - return the min number in the result
                                   
function cakes(obj1, obj2) {
  let result = [];
  Object.keys(obj1).forEach(key => {
    obj2[key] ? result.push(Math.floor(obj2[key] / obj1[key])) :  result.push(0);
  });
  
  return result.sort((a, b) => a - b)[0];
}

// refactor
function cakes(obj1, obj2) {
  return Math.min(...Object.keys(obj1).map(key => obj2[key] ? Math.floor(obj2[key] / obj1[key]) : 0));
}
