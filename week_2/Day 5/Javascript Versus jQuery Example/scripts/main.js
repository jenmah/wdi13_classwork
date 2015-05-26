// PURE VANILLA JAVASCRIPT

console.log('hello!');

// collect DOM element
var buttons = document.getElementsByClassName("greeting");


// then create event listener 
// buttons.addEventListener

// write a four loop to cycle through the different greeting buttons (since they all have the same class) for the event listeners
  for (var i = 0; i < buttons.length; i++) {
    // console.log(buttons[i]);
    buttons[i].addEventListener("click", function(event) {
      showGreeting(this.id);
      // console.log(event);
      // console.log(this);
    var output = document.getElementById("output-text");
    // debugger;
    var greeting = "WDI 13 speaks " + this.id;
    output.innerText = greeting; 
    })
  }

var showGreeting = function(language) {
    buttons[i].addEventListener("click", function(event) {
    var output = document.getElementById("output-text");
    var greeting = "WDI 13 speaks " + language;
    output.innerText = greeting; 
}


// JAVASCRIPT





