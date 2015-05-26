// Your code here

// ## Part 6 (code has to be at the top for it to run properly)
window.addEventListener('load', function() {
  




// ## Part 1
var clicker = document.getElementById('clicker');

clicker.addEventListener('click', function(event) {
  alert('I hope this works.');
});



// ## Part 2
var mouser = document.getElementById('mouser');

mouser.addEventListener('mouseover', function(event) {
  this.style.backgroundColor = 'rgb(0, 255, 0)';
});


mouser.addEventListener('mouseout', function(event) {
  this.style.backgroundColor = 'rgb(255, 255, 0)';
});


// ## Part 3
var former = document.getElementById('former');

former.addEventListener('submit', function(event) {
  alert(this.children[0].value);
});



// ## Part 4
// The page was refreshing because the browser's default was telling it to.

var former = document.getElementById('former');

former.addEventListener('submit', function(event) {
  event.preventDefault();
  alert(this.children[0].value);
});



// ## Part 5
var vegetables= document.getElementById('vegetables');

vegetables.addEventListener('click', function(event) {
  alert(event.target.firstChild.nodeValue);
});






// ## Part 6
// the rest of the code is on top

});





// ## Questions






