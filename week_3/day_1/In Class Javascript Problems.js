// sillySum(arr)
// Write a function that takes an array of numbers, and returns the sum of each number multiplied by its index.
// count += (number * index)

var arr = [1, 2, 3, 4, 5];

function sillySum(arr) {
  var value = 0;
  for(var i=0; i < arr.length; i++) {
    console.log(arr[i] * [i]);
    value += (arr[i] * [i]);
  }
  return value;
}


console.log(sillySum(arr));