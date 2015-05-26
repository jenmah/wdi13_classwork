// reverse.js

// Write a program that will take a hardcoded string, and console log the reversed version of it. Use a for loop

var inputString = "building";
var reversedString = '';

for (i=(inputString.length-1); i>=0; i--) {
  reversedString += inputString[i];
}

console.log(reversedString);





// filterLongWords.js

// Hardcode an array of words. Have a variable maxLength, push words that are less than the maxLength into a new array, and console.log that.

var randomWords = ['one', 'two', 'three', 'four'];
var shortWords = [];
var maxLength = 4;

for (i=0; i < randomWords.length; i++) {
  if (randomWords[i].length < maxLength) {
      shortWords.push(randomWords[i]); 
  }
}

console.log(shortWords);




var randomWords = ['one', 'two', 'three', 'four'];
var maxLength = 4;

var shortWords = randomWords.map(function(word){
    if (word.length < maxLength) {
      return word;
    }
});
console.log(shortWords);


shortWords = randomWords.filter(function(word){
    if (word.length < maxLength) {
      return true;
    } else {
      return false;
    }
});

console.log(shortWords);


Jeremy's solution:

var words = ['one', 'two', 'three', 'four'];
var MAXLENGTH = 6;
var largerThan = [];

for (var i = 0; i <=words.length - 1; i++) {
  if(words[i] < MAXLENGTH) {
    largerThan.push(words[i]);
  }
}





// grade.js

// Output the following letter grade from a variable with with a test score. Display either "A", "B", "C", "D", or "F", for an score that is an integer between 0 and 100. Try and use a switch statement.

var testScores = function(score) {
  console.log(score);
  switch (score / 10) { 
    case 9:
      console.log('A');
      break;
    default:
      console.log('testing');
    case 8:
      console.log('B');
      break;
    default:
      console.log('testing');
    case 7:
      console.log('A');
      break;
    default:
      console.log('testing');
    case 6:
      console.log('B');
      break;
    default:
      console.log('testing');
}


testScores(90);




Jeremy's Solution:

switch(true) {
  case (score > 90 && score <= 100) :
    console.log('A');
    break;
  case (score >= 75 && score < 90) :
    console.log('B');
    break;
  case (score > 60 && score <= 75) :
    console.log('C');
    break;
  case (score >= 45 && score < 60) :
    console.log('D');
    break;
  case (score >= 30 && score < 45) :
    console.log('E');
    break;
  default:
    console.log('F');
}






// pluralizer.js

// Take an input like

// thing = "cat"
// count = "5"
// and output the pluralized form of the word like "5 cats" or "1 dog"..

var thing = 'cat';
var numberOfThings = 8;

if (numberOfThings === 0 || numberOfThings > 1) {
  console.log(numberOfThings + ' ' + thing + 's');
} else {
  console.log(numberOfThings + ' ' + thing);
}



// tempConvert.js
// Convert a temperature from F to C.
// Convert it to fahrenheit and output "NN°C is NN°F".

var tempInF = 94;
var tempInC = 32;

function convertCelsiusToFahrenheit(temp) {
  return (9/5)*parseInt(temp)-(-32);
  // return Number((9/5)*parseInt(temp) + 32);
}

function convertFahrenheitToCelcius(temp) {
  return (5/9) * (temp - 32);
}

var richard = convertCelsiusToFahrenheit(tempInC);
console.log(richard);

var answerInCelcius = convertCelsiusToFahrenheit(tempInF);
  console.log(answerInCelcius);


