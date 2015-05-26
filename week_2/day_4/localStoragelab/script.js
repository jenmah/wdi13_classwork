console.log('at least this works!');


$(document).ready(function() {
  var shoppingListArray = [];
  // var i = JSON.parse(localStorage.getItem('shoppingList'));

  // $('ul').append('<li>' + i + '</li>');
  
  $('#new-item').on('keypress', function(event) {
  if (event.which === 13) {
    var shoppingList = $('.shopping-list');
    var newItem = $(this).val();
    // var newItem = this.value
    // var newItem = event.currentTarget.value
    shoppingList.append('<li>' + newItem + '</li>');
    shoppingListArray.push(newItem);
    // JSON.stringify(shoppingListArray);
    localStorage.setItem('shoppingList', JSON.stringify(shoppingListArray));
    $(this).val('');
    return localStorage;
    }
  })
});


// $('#clear').click( function() {
// window.localStorage.clear();
// location.reload();
// return false;
// });





// for having one button take the information from two input boxes
$('.name-button').on('click', function(event) {
  nameOne = $('#player-one-name').val();
  console.log(nameOne);
  nameTwo = $('#player-two-name').val();
  console.log(nameTwo);
});









// var myShoppingList = $('.shopping-list');
// var stringShoppingList = JSON.stringify(myShoppingList);
// localStorage.setItem($('.shopping-list'), stringShoppingList);





// localStorage
// Storage {length: 0}
// var shoppingList = [];
// undefined
// var stringList = JSON.stringify(shoppingList)
// undefined
// stringList
// "[]"
// localStorage.setItem('shoppingList', stringList);
// undefined
// localS
// VM735:1 Uncaught ReferenceError: localS is not defined(anonymous function) @ VM735:1InjectedScript._evaluateOn @ VM298:883InjectedScript._evaluateAndWrap @ VM298:816InjectedScript.evaluateOnCallFrame @ VM298:942(anonymous function) @ script.js:9m.event.dispatch @ jquery.min.js:3m.event.add.r.handle @ jquery.min.js:3
// .setItem('shoppingList', stringList);
// VM743:1 Uncaught SyntaxError: Unexpected token .InjectedScript._evaluateOn @ VM298:883InjectedScript._evaluateAndWrap @ VM298:816InjectedScript.evaluateOnCallFrame @ VM298:942(anonymous function) @ script.js:9m.event.dispatch @ jquery.min.js:3m.event.add.r.handle @ jquery.min.js:3
// localStorage
// Storage {shoppingList: "[]", length: 1}
// newItem
// "apples"
// var shoppingListArray = localStorage.shoppingList;
// undefined
// shoppingListArray
// "[]"
// var shoppingListObject = JSON.parse(shoppingListArray)
// undefined
// shoppingListObject
// []
// shoppingListObject.push(newItem)
// 1
// shoppingListObject
// ["apples"]
// var updatedArray = shoppingListObject.push(newItem)
// undefined
// var updatedString = JSON.stringify(updatedArray)
// undefined
// updatedString
// "2"
// updatedArray
// 2
// shoppingListObject
// ["apples", "apples"]
// JSON.stringify(shoppingListObject)
// "["apples","apples"]"
// localStorage.setItem('shoppingList', JSON.stringify(shoppingListObject))
// undefined
// localStorage.getItem('shoppingList')
// "["apples","apples"]"