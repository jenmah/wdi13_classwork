// JQUERY

// console.log("testing!");

// $('.greeting').on('click', function(event) {
//   var output = "WDI 13 speaks " + $(this).attr('id');
//   $('p').text(output);

// })


// ______ same function as above, but as a callback ______ //


$('.greeting').on('click', showGreeting);


function showGreeting() {
  console.log("click");
  var output = "WDI 13 speaks " + $(this).attr('id');
  $('p').text(output);
}

showGreeting();