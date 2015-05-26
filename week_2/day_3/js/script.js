// NATIVE JAVASCRIPT CODE
// var showPortfolio = function(){
//  document.getElementsByClassName('secret_message')[0].className = "secret_message";
// }

// var setUpEventListeners = function(){
//  var helloButton = document.getElementById('helloButton');
// //This is a callback, you do not need to explictly call the showPortfolio cuntion
//  helloButton.addEventListener('click', showPortfolio);
// };

// var initialize = function(){
//  document.getElementsByTagName('section')[0].className = '';
//  document.getElementsByClassName('message')[0].className = "hidden";
// };

// initialize();
// setUpEventListeners();


// *** we downloaded this version of jQuery: Download the uncompressed, development jQuery 2.1.4 ***





// jQuery CONVERSION

// console.log($('section'), 'is the body selected?');

// this shows the click event in the console
var showPortfolio = function() {
  $('.secret_message').toggleClass('hidden');
};

var setUpEventListeners = function() {
  $('#helloButton').on('click', showPortfolio);
  $('li').on('mouseover', function() {
    console.log(this, $(this));
    console.log('mouse alert');
    $('li a').removeClass('active');
    $(this).addClass('active');
  });
  $('li').on('mouseout', function() {
    $(this).removeClass('active');
  });
};

var initialize = function() {
  $('section').removeClass('no_js');
  $('.message').addClass('hidden');
};


// Only when all of the HTML is loaded, call the initialize function
$(document).ready(function() {
  setUpEventListeners();
  initialize();
});



















